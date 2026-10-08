use AdventureWorksOBP

INSERT INTO Drzava (Naziv)
VALUES ('Madagaskar')

SELECT * FROM Drzava

INSERT INTO Drzava (Naziv)
VALUES ('Argentina')

INSERT INTO Grad (Naziv, DrzavaID)
VALUES ('Buenos Aires', 5)

INSERT INTO Kategorija (Naziv)
VALUES ('Razno')

SELECT * FROM Kategorija

INSERT INTO Potkategorija (Naziv, KategorijaID)
VALUES ('Playeri', 5)

INSERT INTO Proizvod (Naziv, BrojProizvoda, Boja, MinimalnaKolicinaNaSkladistu, CijenaBezPDV, PotkategorijaID)
VALUES ('Sony player', 786, 'Crna', 20, 985.50, 38)

INSERT INTO Kupac (Ime, Prezime, Email)
VALUES ('Josipa', 'Josić', 'josipa@gmail.com')

INSERT INTO KreditnaKartica (Tip, Broj, IstekMjesec, IstekGodina)
VALUES ('Visa', 1212343456567878, 05, 2033)

CREATE TABLE KupacVIP (
 Ime nvarchar(50),
 Prezime nvarchar(50)
 )

 INSERT INTO KupacVIP (Ime, Prezime)
 SELECT Ime, Prezime FROM Kupac
 WHERE Ime IN ('Karen', 'Mary', 'Jimmy')

 SELECT * FROM Kupac
WHERE Prezime LIKE 'A%'

 UPDATE Kupac
 SET GradID = 2
 WHERE Ime = 'Kim' AND Prezime = 'Abercrombie'

 UPDATE Kupac
 SET GradID = 4
 WHERE Prezime LIKE 'A%'

 UPDATE Kupac
 SET Email = 'nepoznato@nepoznato.com'
 WHERE IDKupac BETWEEN 40 AND 42

 UPDATE Kupac
 SET Ime = 'Edo'
 WHERE Ime = 'Eduardo' AND Prezime = 'Diaz'

 UPDATE Racun
 SET Komentar = 'Dodatno Provjeriti!!'
 WHERE DatumIzdavanja = '20040401' AND KomercijalistID IS NULL AND KreditnaKarticaID IS NULL

 SELECT * FROM Drzava
 SELECT * FROM Kupac
 WHERE GradID IN (6, 7, 8)

 UPDATE Kupac
 SET GradID = NULL
 WHERE GradID IN (6, 7, 8)

 DELETE FROM Grad
 WHERE DrzavaID = 2

 DELETE FROM Drzava
 WHERE IDDrzava = 2

 DELETE FROM Kupac
 WHERE Prezime = 'Trtimirović'

 SELECT * FROM Kupac
 WHERE Prezime LIKE 'Tr%'

 SELECT * FROM Stavka
 WHERE RacunID = 75123

 DELETE FROM Stavka
 WHERE IDStavka BETWEEN 121315 AND 121317

 DELETE FROM Racun
 WHERE IDRacun = 75123

 SELECT * FROM Grad

 INSERT INTO Drzava (Naziv)
 VALUES ('Slovenija')

 INSERT INTO Grad (Naziv, DrzavaID)
 VALUES ('Ljubljana', 7)


 SELECT * FROM Komercijalist
 WHERE Ime = 'Garfild' AND Prezime = 'Mačković'

 INSERT INTO Stavka (

 SELECT * FROM Kupac
 WHERE Ime = 'Robert' AND Prezime = 'Mrkonjić'

 SELECT * FROM Proizvod
 WHERE Boja IN ('bijela')

 INSERT INTO Racun (DatumIzdavanja, BrojRacuna, KupacID, KomercijalistID)
 VALUES ('20110518', 'RN18052011', 19979, 287)

 SELECT * FROM Racun
 WHERE BrojRacuna = 'RN18052011'

 INSERT INTO Proizvod (Naziv, BrojProizvoda, MinimalnaKolicinaNaSkladistu, CijenaBezPDV)
 VALUES ('Bike sticker', 6757, 100, 50.33)

 SELECT * FROM Proizvod
 WHERE BrojProizvoda = '6757'

 INSERT INTO Stavka(RacunID, Kolicina, ProizvodID, CijenaPoKomadu, PopustUPostocima, UkupnaCijena)
 VALUES (75124, 3, 874, 8.99, 0, 26.97)

 INSERT INTO Stavka(RacunID, Kolicina, ProizvodID, CijenaPoKomadu, PopustUPostocima, UkupnaCijena)
 VALUES (75124, 2, 1001, 50.33, 0, 100.66)

 INSERT INTO Grad (Naziv)
 VALUES ('Beč')

 SELECT * FROM Grad

 UPDATE Kupac
 SET GradID = 16
 WHERE IDKupac = 19979

 SELECT * FROM Stavka
 WHERE RacunID = 75124

 DELETE FROM Stavka
 WHERE IDStavka = 121319

 SELECT * FROM Racun
 WHERE IDRacun = 75124

