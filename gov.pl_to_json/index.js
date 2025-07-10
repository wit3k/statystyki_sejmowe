const fs = require('fs').promises;
const path = require('path');
const cheerio = require('cheerio');

/**
 * Recursively finds all HTML files in a directory and subdirectories.
 */
async function getFiles(dir) {
  const dirents = await fs.readdir(dir, { withFileTypes: true });
  const files = [];

  for (const dirent of dirents) {
    const res = path.resolve(dir, dirent.name);
    if (dirent.isDirectory()) {
      files.push(...(await getFiles(res)));
    } else if (dirent.isFile() && path.extname(res) === '.html') {
      files.push(res);
    }
  }

  return files;
}

function trimAllInvisible(str) {
  return str.replace(
    /^[\s\uFEFF\xA0\u200B-\u200D\u2060\u0000-\u001F]+|[\s\uFEFF\xA0\u200B-\u200D\u2060\u0000-\u001F]+$/g,
    ''
  );
}

async function main() {
  //const files = await getFiles('scraped_pages/orka.sejm.gov.pl/ArchAll2.nsf/90faebcb8740c764c12568160030aa2d');
  const files = await getFiles('scraped_pages');
  const output = [];

  for (const file of files) {
    try {
      const content = await fs.readFile(file, 'utf-8');
      const $ = cheerio.load(content);

      function parseTable(dom) {
        const tabela2 = {};
        dom.each((index, li) => {
          const left = $(li).find('p.left');
          const right = $(li).find('p.right');

          if (left.length && right.length) {
            const key = left.text().trim().replace(/:$/, ''); // Remove trailing colon
            const value = right.text().trim();
            tabela2[key] = value;
          }
        });
        return tabela2;
      }
      const kadencja =
        $('table tr td.Header a').text() || $('table tr td.Header').text();
      const posel =
        $('table tr td div ul.dane1 li p.posel').text() ||
        $('table tr td ul li p.posel').text();
      const klub =
        $('table tr td.Klub p a').text() || $('table tr td.Klub').text();

      let tabela1 = parseTable($('table tr td div ul.dane1 > li'));
      let tabela2 = parseTable($('table tr td ul.dane2 > li'));
      if (Object.keys(tabela1).length === 0) {
        tabela1 = parseTable($('table tr td ul.dane1 > li'));
        tabela2 = parseTable($('table tr td ul.dane2 > li'));
      }

      output.push({
        filename: path.relative('scraped_pages', file),
        kadencja: trimAllInvisible(kadencja),
        posel: trimAllInvisible(posel),
        dane: { ...tabela1, ...tabela2 },
        klub: klub,
      });
    } catch (err) {
      console.error(`Error processing ${file}:`, err.message);
    }
  }

  await fs.writeFile('output.json', JSON.stringify(output, null, 2));
  console.log('✅ Data successfully saved to output.json');
}

main();
