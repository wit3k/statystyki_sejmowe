# Statystyki sejmowe

# Po co to komu

Chciałem sobie samemu udzielić odpowiedzi na następujące pytania:
- Czy w rządzie na prawdę cały czas siedzą ci sami ludzie?
- Jeśli tak to kto? (Z jakich partii? W jakich partiach są obecnie? Co z postkomuną?)
- Jakie są przesunięcia między partiami? (farbowane lisy)

# Wyniki

### Postkomuniści

Najważniejsze wnioski:
- nigdy w czasach 3RP nie rządziło aż tak dużo postkomunistów (chyba że za takie potraktujemy rządy SLD)
- większość ludzi z czasów PRL po prostu już nie żyje
- największy punkt wspólny między PRL a 3RP miało PSL (dawno, dawno temu)

*Postkomuna:*
- Jerzy Szmajdziński - 1985 PZPR, 2007 Lewica
- Zofia Grzebisz-Nowicka - 1980 PZPR, 2001 SLD
- Rajmund Moric - 1985 PZPR, 2005 Samoobrona << przefarbowany
- Jacek Piechota - 1985 PZPR, 2005 SLD
- Jerzy Jaskiernia - 1980 PZPR, 2001 SLD
- Tadeusz Biliński - 1985 PZPR, 1997 SLD << chłop ma prawie 100 lat, stary komuch jeszcze się trzyma

*Posłowie z PRL, ale totalnie nie postkomuna:*
 - Jan Olszewski - 1957 PZPR, 2001 LPR, zm. 7 lutego 2019
 - Tadeusz Mazowiecki - 1961 bezp. ZNAK, 1997 Unia Wolności, zm. 28 października 2013
 - Eugeniusz Czykwin - 1985 bezp. ChSS, 2019 PO
 - Hanna Suchocka - 1980 bezpartyjna, 1997 Unia Wolności

*Ludowcy:*
 - Stanisław Żelichowski - 1985 ZSL, 2011 PSL
 - Józef Cinal - 1969 ZSL, 1991 PSL , zm. 5 lipca 2020
 - Waldemar Michna - 1980 ZSL, 1993 PSL, zm. 21 lutego 2013
 - Edward Gnat - 1985 ZSL, 1993 PSL
 - Marian Król - 1985 ZSL, 1993 PSL
 - Mikołaj Kozakiewicz - 1985 ZSL, 1991 PSL
 - Włodzimierz Wiertek - 1985 ZSL, 1991 PSL

### Liski hitruski
- Dane z sejm.gov.pl przemieliłem tak żeby widzieć jak politycy z kadencji, na kadencję, zmieniają barwy partyjne.
- O dziwo zjawisko obrotowych drzwi nie jest tak widoczne w sejmie.
- Do sprawdzenia jak to wygląda na szczeblu lokalnym (tam może być większy przeciąg)
- POPiS ma bardzo dużą retencję posłów, ale w zdecydowanej większości są oni lojalni swoim partiom
- Nie tylko POPiS, ale ogólnie politycy mają tendencję do zmiany partii, dopiero po tym jak ich obecna wpadnie pod próg wyborczy (nadal wygląda na to że statystycznie jest to bardzo małe zjawisko)
- Lata '90 i wczesne 2000 obfitowały w przetasowania polityczne.
- Ostatnie 20 lat to umacnianie się PO i PiS (może i mało odkrywcze, ale teraz mam na to dane i ładny wykres)

[![](./liski_hitruski/farbowane_lisy_mini.png)](./liski_hitruski/farbowane_lisy.png)
- całość diagramu dostępna [TUTAJ(PNG)](https://raw.githubusercontent.com/wit3k/statystyki_sejmowe/7701ac63537029cca0624e3fd0d751b849132a72/liski_hitruski/farbowane_lisy.png),  oraz [TUTAJ(SVG)](./liski_hitruski/farbowane_lisy.svg)
- obie grafiki po otworzeniu wydają się bardzo małe, ale trzeba je sobie przybliżyć
- sposób generowania w opisie poniżej

W katalogu `/wykresy` znajdują się zrzuty ekranów dla wszystkich wykresów jakie przygotowałem po drodze.

### 01_A_staz
[![](./wykresy/01_A_fotele.png)](./wykresy/01_A_fotele.png)
- wykres ilości miejsc w sejmi z podziałem na *kluby*
- wykres przedstawia ilość miejsc w sejmie, a nie proporcje zdobytych głosów (fałszerstwa PPR + system d'Honta)
- pierwszy słupek to Sejm Ustawodawczy. Na oko wygląda tak jakby był pluralizm, ale 80% to "Blok Demokratyczny" (PPS, PPR, SL, SD)
- między 2001 - 2011 Platforma Obywatelska zaznaczona jest kolorem ciemnozielonym, potem jest widoczna w różnych odcieniach fioletowego ponieważ koło zmieniało nazwę co kadencję

### 01_B_staz
[![](./wykresy/01_B_fotele.png)](./wykresy/01_B_fotele.png)
- wykres ilości miejsc w sejmi z podziałem na *listy wyborcze*
- na stronie sejm.gov.pl nie znalazłem informacji o listach wyborczych z PRL, więc ta część wykresu jest pusta


### 02_A_retencja
[![](./wykresy/02_A_retencja.png)](./wykresy/02_A_retencja.png)
- wykres przedstawia poziom retencji posłów z podziałem na *kluby*
- rozmiar prostokątów zależny jest od ilości posłów, któży byli już wcześniej posłami
- rozmiar prostokątów jest zależny od tego ile kadencji łącznie przepracował dany poseł
- (3 posłów z 1+1 kadencji, to to samo co 1 poseł z 1+3 kadencji)
- te same uwagi co do kolorów PO, oraz czasów PRL co wyżej

### 02_B_retencja
[![](./wykresy/02_B_retencja.png)](./wykresy/02_B_retencja.png)
- wykres przedstawia poziom retencji posłów z podziałem na *listy wyborcze*
- te same uwagi co do kolorów PO, oraz czasów PRL co wyżej

### 03_A_staz
[![](./wykresy/03_A_staz.png)](./wykresy/02_A_staz.png)
- wykres przedstawia poziom retencji posłów z podziałem na *kluby* w kolejnych kadencjach

### 03_B_staz
[![](./wykresy/03_B_staz.png)](./wykresy/02_B_staz.png)
- wykres przedstawia poziom retencji posłów z podziałem na *listy wyborcze* w kolejnych kadencjach

### 04_A_heatmap
[![](./wykresy/04_A_heatmap.png)](./wykresy/04_A_heatmap.png)
- mapa cieplna dla danych z wykresu 02_B_staz.png

### 05_A_swieze_mieso
[![](./wykresy/05_A_swieze_mieso.png)](./wykresy/05_A_swieze_mieso.png)
- pokazuje ilu nowych polityków miało szansę zaistnieć w nowym rządzie



### Rekordziści
W plikach `rekordzisci_3rp.csv` oraz `rekordzisci_prl.csv` znajdują się listy posłów z najdłuższym stażem.

Top 10 dla IIIRP:
|posel                |ilosc_kadencji|dane Lista                  |
|---------------------|--------------|----------------------------|
|Marek Sawicki        |    7         |Polskie Stronnictwo Ludowe  |
|Jarosław Kaczyński   |    6         |Prawo i Sprawiedliwość      |
|Jerzy Polaczek       |    6         |Prawo i Sprawiedliwość      |
|Marek Suski          |    6         |Prawo i Sprawiedliwość      |
|Adam Lipiński        |    6         |Prawo i Sprawiedliwość      |
|Marek Kuchciński     |    6         |Prawo i Sprawiedliwość      |
|Mieczysław Kasprzak  |    6         |Polskie Stronnictwo Ludowe  |
|Stanisław Żelichowski|    5         |Polskie Stronnictwo Ludowe  |
|Witold Czarnecki     |    5         |Prawo i Sprawiedliwość      |
|Krystyna Łybacka     |    5         |Sojusz Lewicy Demokratycznej|

Top 10 dla PRL:
|posel                |ilosc_kadencji|
|---------------------|--------------|
|Józef Cyrankiewicz   |    6         |
|Czesław Wycech       |    6         |
|Bolesław Podedworny  |    6         |
|Kazimierz Banach     |    6         |
|Jan Frankowski       |    6         |
|Marian Jaworski      |    6         |
|Jan Karol Wende      |    6         |
|Lucjan Motyka        |    6         |
|Stanisław Kulczyński |    6         |

# Jak można samemu wygenerować raporty

## Najłatwiej
- pobierz plik `orka_sejm_gov_pl.ods` - arkusz kalkulacyjny przyjacielem twym

## Ambitniej (wszystkie kroki są opcjonalne i można zacząć od dowolnego momentu)
1. Scraper
- W katalogu `./puppeteer-scraper/` znajduje się scraper strony `orka.sejm.gov.pl`, która jest archiwum danych o posałach z poprzednich kadencji (na liście nie ma obecnej kadencji)
- przed pierwszym uruchomieniem skryptu uruchom: `npm install`
- do pobrania całej zawartości uruchom: `node scrapeWithCaptcha.js`
- otworzy się Chrome. Jeśli wyskoczy CAPTCHA trzeba ją ręcznie wpisać i nacisnąć spację w konsoli
- całość (ok 10 tysięcy) stron pobiera się ok 20 minut

2. HTML -> JSON
- w katalogu `./gov.pl_to_json/` jest mały skrypt, który wyciąga z HTML dane, których można potem użyć do generowania raportów
- przed pierwszym uruchomieniem: `npm install`
- a potem: `node index.js`
- w pliku `output.json` pojawią się zaktualizowane dane.
  - Ten plik już jest w repozytorium i nie powinien się zmienić przed końcem kadencji (inaczej oznaczałoby to że ktoś gmera w historycznych danych dot. posłów)

3. JSON -> CVS
- Żeby przerobić plik tekstowy z dużą ilośćią wąsów {} na tabelę można użyć jakiegoś narzędzia online, AI, albo tak jak ja zaimportować dane do NocoDB
- do surowej tabelki dorzuciłem jeszcze ręcznie kolumnę z chronologią (sortowanie po nazwie kadencji jest zawodne)
- plik zawierający wszystkie dane znajduje się pod: `./orka_sejm_gov_pl.csv`
- plik CSV polecam zaimportować do MySQL/PostgreSQL tak żeby można było użyć tych danych w Apache Superset

4. raporty w Apache Superset
- wszystkie widoki można łatwo samemu wyklikać, ale w tym repozytorium znajduje się plik `./dashboard_export_20250710T073539.zip`
- trzeba tylko pamiętać o tym żeby najpierw zaimportować CSV, a dopiero potem dashboard (&charts)
- podgląd tego jak to powinno wyglądać załączam w PDFie: `./statystyki-sejmowe.pdf`
