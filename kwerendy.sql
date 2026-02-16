/*Zapytanie 1: wybierające jedynie średnią liczbę pracowników w firmach, minimalną liczbę
pracowników i maksymalną liczbę pracowników. Kolumnom należy nadać nazwy (aliasy), kolejno:
„średnia”, „najmniej”, „najwięcej” */

SELECT AVG(liczba_pracownikow) AS srednia, MIN(liczba_pracownikow) AS najmniej, MAX(liczba_pracownikow) AS najwiecej FROM wykonawcy;

/*Zapytanie 2: wybierające jedynie nazwy firm i liczbę pracowników dla firm, w których liczba
pracowników wynosi 40 i więcej*/

SELECT nazwa_firmy, liczba_pracownikow FROM wykonawcy WHERE liczba_pracownikow >= 40

/*Zapytanie 3: wybierające bez powtórzeń jedynie nazwy miast, z których pochodzą klienci,
posortowane rosnąco według nazwy miasta*/

SELECT DISTINCT miasto FROM klienci
GROUP BY miasto ASC

/*Zapytanie 4: wybierające jedynie imiona klientów oraz ceny ich zleceń tylko dla klientów z Poznania,
którzy zamówili malowanie. Należy posłużyć się relacją*/

SELECT imie, cena FROM klienci
JOIN zlecenia ON klienci.id_klienta=zlecenia.id_klienta
WHERE miasto = 'Poznań' AND rodzaj = 'malowanie';

/*Zapytanie 5: wybierające jedynie imiona klientów oraz nazwy firm wykonujących dla nich zlecenia.
Należy posłużyć się relacją*/

SELECT imie, nazwa_firmy FROM klienci
JOIN zlecenia ON klienci.id_klienta-zlecenia.id_klienta
JOIN wykonawcy ON zlecenia.id_zlecenia=wykonawcy.id_wykonawcy