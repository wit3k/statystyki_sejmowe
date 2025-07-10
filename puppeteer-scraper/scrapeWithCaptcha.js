const puppeteer = require('puppeteer');
const fs = require('fs');
const path = require('path');
const { URL } = require('url'); // Node.js built-in module for URL parsing

const DOWNLOAD_DIR = path.join(__dirname, 'scraped_pages');
const LINK_LIST_FILE = 'list_of_links.txt';
const CAPTCHA_PHRASE = "This question is for testing whether you are a human visitor and to prevent automated spam submission";
const TIMEOUT_MS = 60000; // 1 minute timeout for page loads

function waitForSpacebar() {
  console.log('\n--- CAPTCHA Detected! ---');
  console.log('Please solve the CAPTCHA in the browser window.');
  console.log('Once solved, press the [SPACEBAR] in this terminal to continue...');
  console.log('Press [Ctrl+C] to exit the script at any time.');

  if (process.stdin.isTTY) {
    process.stdin.setRawMode(true);
    process.stdin.resume();
  }

  return new Promise(resolve => {
    const handler = (data) => {
      const key = data.toString('hex');

      if (key === '20') { // Spacebar key (hex 20)
        console.log('\nSpacebar detected. Continuing...');
        cleanup();
        resolve();
      } else if (key === '03') { // Ctrl+C key (hex 03)
        console.log('\nCtrl+C detected. Exiting...');
        cleanup();
        process.exit(0);
      }
    };

    const cleanup = () => {
      process.stdin.removeListener('data', handler);
      if (process.stdin.isTTY) {
        process.stdin.setRawMode(false);
        process.stdin.pause();
      }
    };

    process.stdin.on('data', handler);
  });
}

async function scrapeUniqueLinks(page) {
  const uniqueLinks = await page.evaluate(() => {
    const linkNodes = document.querySelectorAll('a');
    const links = Array.from(linkNodes).map(link => link.href);
    return [...new Set(links)];
  });
  return uniqueLinks;
}

function sanitizePathPart(str) {
  return str.replace(/[?<>:"|*]/g, '_');
}

function urlToFilePath(urlString, baseDir) {
  try {
    const urlObj = new URL(urlString);
    const sanitizedHostname = sanitizePathPart(urlObj.hostname);
    let pathname = urlObj.pathname;
    let sanitizedPathParts = pathname.split('/').map(part => sanitizePathPart(part));
    sanitizedPathParts = sanitizedPathParts.filter(part => part !== '');

    let filename;
    if (pathname.endsWith('/') || pathname === '') {
      filename = 'index.html';
    } else {
      const lastPart = sanitizedPathParts[sanitizedPathParts.length - 1];
      if (!path.extname(lastPart)) {
        filename = `${lastPart}.html`;
      } else {
        filename = lastPart;
      }
      sanitizedPathParts.pop();
    }
    const dirPath = path.join(baseDir, sanitizedHostname, ...sanitizedPathParts);
    // Construct the full file path
    const filePath = path.join(dirPath, filename);

    return filePath;

  } catch (error) {
    console.error(`Error converting URL to path for ${urlString}: ${error.message}`);
    return path.join(baseDir, `invalid_url_${Date.now()}.html`);
  }
}

function ensureDirectoryExistence(filePath) {
  const dirname = path.dirname(filePath);
  if (fs.existsSync(dirname)) {
    return;
  }
  fs.mkdirSync(dirname, { recursive: true });
}


async function main() {
  let browser;
  let page;

  const linksToProcess = [];
  const visitedUrls = new Set();
  let pagesSaved = 0;

  try {
    console.log(`Reading initial links from file: ${LINK_LIST_FILE}`);
    try {
      const fileContent = fs.readFileSync(LINK_LIST_FILE, 'utf8');
      const initialLinks = fileContent.split(/\r?\n/).map(line => line.trim()).filter(line => line.length > 0);

      if (initialLinks.length === 0) {
        console.error(`Error: The file "${LINK_LIST_FILE}" is empty or contains no valid links.`);
        return;
      }

      initialLinks.forEach(link => {
        if (link && !visitedUrls.has(link)) {
          linksToProcess.push(link);
          visitedUrls.add(link);
        }
      });
      console.log(`Loaded ${linksToProcess.length} initial links to process.`);

    } catch (error) {
      console.error(`Error reading file "${LINK_LIST_FILE}": ${error.message}`);
      console.error('Please make sure the file exists and contains a list of links, one per line.');
      return;
    }

    if (!fs.existsSync(DOWNLOAD_DIR)) {
      fs.mkdirSync(DOWNLOAD_DIR, { recursive: true });
      console.log(`Created directory for saved pages: ${DOWNLOAD_DIR}`);
    }

    console.log('Launching a visible browser...');
    browser = await puppeteer.launch({
      headless: false,
      defaultViewport: null,
      args: ['--start-maximized']
    });

    page = await browser.newPage();

    console.log('\n--- Starting crawl ---');
    while (linksToProcess.length > 0) {
      const currentUrl = linksToProcess.shift();

      try {
        console.log(`[${pagesSaved + 1}] Navigating to: ${currentUrl} (Queue: ${linksToProcess.length})`);
        await page.goto(currentUrl, { waitUntil: 'domcontentloaded', timeout: TIMEOUT_MS });

        let htmlContent = await page.content();
        if (htmlContent.includes(CAPTCHA_PHRASE)) {
          await waitForSpacebar();
          htmlContent = await page.content();
        }

        const filePath = urlToFilePath(currentUrl, DOWNLOAD_DIR);
        ensureDirectoryExistence(filePath); // Create directories if they don't exist
        fs.writeFileSync(filePath, htmlContent, 'utf8');

        pagesSaved++;
        console.log(`-> Saved HTML to: ${filePath}`);

        const scrapedLinks = await scrapeUniqueLinks(page);
        let newLinksFound = 0;

        for (const link of scrapedLinks) {
          if (link && (link.startsWith('http://') || link.startsWith('https://')) && !visitedUrls.has(link)) {
            linksToProcess.push(link);
            visitedUrls.add(link);
            newLinksFound++;
          }
        }
        console.log(`-> Found ${newLinksFound} new links. Total visited: ${visitedUrls.size}`);

      } catch (error) {
        console.error(`-> Failed to process ${currentUrl}: ${error.message}`);
      }
    }

    console.log('\n--- Crawl finished ---');
    console.log(`All available links have been processed. Total pages saved: ${pagesSaved}`);

  } catch (error) {
    console.error(`An unexpected error occurred during the script execution: ${error.message}`);
  } finally {
    // --- 4. Ensure the browser is always closed ---
    if (browser) {
      console.log('Closing browser...');
      await browser.close();
    }
  }
}

main();
