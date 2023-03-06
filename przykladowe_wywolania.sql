


--- wyświetl filmy danego reżysera ---
SELECT tytul FROM film JOIN tworcy USING(id_filmu) WHERE rezyser='Woody Allen';

--- wyświetl filmy pomiędzy latami x - y ---
SELECT tytul FROM film WHERE 2000 <= rok_premiery AND rok_premiery <= 2018;

--- wyświetl filmy danego gatunku ---
SELECT tytul FROM film WHERE gatunek = 'komedia';

SELECT tytul FROM film JOIN tworcy USING(id_filmu) WHERE rezyser='Woody Allen' AND 2000 <= rok_premiery AND rok_premiery <= 2020 AND gatunek = 'akcja';

--- dodaj seans ---
SELECT dodaj_seans (2, 16, '2022-03-13', '20:05:00', '22:10:00', 'polski');
SELECT dodaj_seans (1, 20, '2022-03-13', '10:05:00', '12:10:00', 'angielski');
SELECT dodaj_seans (3, 56, '2022-03-10', '20:05:00', '22:10:00', 'polski');

SELECT dodaj_seans (3, 36, '2022-03-12', '10:05:00', '12:10:00', 'polski');
SELECT dodaj_seans (3, 27, '2022-03-12', '13:05:00', '15:10:00', 'polski');

--- zmien date ---
SELECT zmien_date_seansu(1, '2022-02-14', '20:00:00', '22:10:00');

--- usun seans ---
SELECT usun_seans(1);

--- dodaj klienta ---
SELECT dodaj_klienta('Ala', 'Kot', 'alamakota@kl.sl', '527182798');

--- dodaj rezerwacje ---
SELECT dodaj_rezerwacje(1, 3);
SELECT dodaj_rezerwacje(3, 1);

SELECT dodaj_rezerwacje(2, 4);

--- widok ---
SELECT * FROM grane_kryminaly;
