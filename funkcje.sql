--- dodaj seans ---
CREATE OR REPLACE FUNCTION dodaj_seans (id_sali INTEGER, id_filmu INTEGER, data_seansu DATE, czas_rozpoczecia TIME, czas_zakonczenia TIME, jezyk TEXT) RETURNS VOID AS $$ 
BEGIN
INSERT INTO seans(id_sali, id_filmu, data_seansu, czas_rozpoczecia, czas_zakonczenia, jezyk) VALUES (id_sali, id_filmu, data_seansu, czas_rozpoczecia, czas_zakonczenia, jezyk);
RAISE NOTICE 'Dodano nowy seans';
END;
$$ LANGUAGE 'plpgsql';

--- usun seans ---
CREATE OR REPLACE FUNCTION usun_seans (id INTEGER) RETURNS VOID AS $$ 
BEGIN
DELETE FROM seans WHERE id_seansu = id;
RAISE NOTICE 'Usunieto seans';
END;
$$ LANGUAGE 'plpgsql';

--- zmien date seansu ---
CREATE OR REPLACE FUNCTION zmien_date_seansu (id INTEGER, nowa_data DATE, nowy_czas_rozpoczecia TIME, nowy_czas_zakonczenia TIME) RETURNS VOID AS $$ 
BEGIN
UPDATE seans SET data_seansu = nowa_data WHERE id_seansu = id;UPDATE seans SET czas_rozpoczecia = nowy_czas_rozpoczecia WHERE id_seansu = id;
UPDATE seans SET czas_zakonczenia = nowy_czas_zakonczenia WHERE id_seansu = id;
RAISE NOTICE 'Zmieniono date seansu';
END;
$$ LANGUAGE 'plpgsql';

--- dodaj klienta ---
CREATE OR REPLACE FUNCTION dodaj_klienta(imie VARCHAR(50), nazwisko VARCHAR(50), mail VARCHAR(50), telefon VARCHAR(50) ) RETURNS VOID AS $$ 
BEGIN 
INSERT INTO klient(imie, nazwisko, email, nr_telefonu) VALUES (imie, nazwisko, mail, telefon);
RAISE NOTICE 'Dodano klienta';
END;
$$ LANGUAGE 'plpgsql';

--- dodaj rezerwacje ---
CREATE OR REPLACE FUNCTION dodaj_rezerwacje(id_klienta INTEGER, id_seansu INTEGER) RETURNS VOID AS $$ 
BEGIN 
INSERT INTO rezerwacja(id_klienta, id_seansu) VALUES (id_klienta, id_seansu);
RAISE NOTICE 'Dodano rezerwacje';
END;
$$ LANGUAGE 'plpgsql';
--- UPDATE seans (liczba miejsc) ---
--------------------------------------------------

---	widok ---
CREATE VIEW grane_kryminaly AS
 SELECT id_filmu, tytul FROM seans JOIN film USING(id_filmu)WHERE gatunek = 'kryminal';

