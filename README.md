# Statystyki sejmowe

# Po co to komu

Chciałem sobie samemu udzielić odpowiedzi na następujące pytania:
- Czy w rządzie na prawdę cały czas siedzą ci sami ludzie?
- Jeśli tak to kto? (Z jakich partii? W jakich partiach są obecnie? Co z postkomuną?)
- Jakie są przesunięcia między partiami? (farbowane lisy)

# Wyniki

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
[![](./wykresy/03_B_staz.png)](./wykresy/02_B_staz.png)

### 03_B_staz
- wykres przedstawia poziom retencji posłów z podziałem na *listy wyborcze* w kolejnych kadencjach

### 04_A_heatmap
[![](./wykresy/04_A_heatmap.png)](./wykresy/04_A_heatmap.png)
- mapa cieplna dla danych z wykresu 02_A_staz.png

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
