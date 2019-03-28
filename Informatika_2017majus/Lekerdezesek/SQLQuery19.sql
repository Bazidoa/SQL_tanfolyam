/*
2. Készítsen lekérdezést, amely a 2006-ban elhangzott elõadások címét és dátumát
ábécérendben sorolja fel! (2cimek)
*/
SELECT cim,ido
	FROM eloadas
	WHERE Year(ido) = 2006
	ORDER BY cim ASC;

/*
3. Készítsen lekérdezést, amely kilistázza azokat az elõadásokat, amelyek címe a „nyelv”
szórészletet tartalmazza! A felsorolásban az elõadó tudós neve és elõadásának címe jelenjen
meg! (3nyelv)
*/

SELECT cim, nev
	FROM eloadas
	INNER JOIN kapcsolo ON eloadas.id = kapcsolo.eloadasid
	INNER JOIN tudos ON tudos.id = kapcsolo.tudosid 
	WHERE cim LIKE '%nyelv%';

/*
4. Készítsen lekérdezést, amely tudományterületenként megadja az elõadó tudósok számát!
A listában a tudományterület neve és a tudósok száma jelenjen meg az utóbbi szerint csökkenõ sorrendben.
*/

SELECT terulet, count(nev) as 'Tudosok szama'
	FROM tudos
	GROUP BY terulet
	ORDER BY [Tudosok szama] DESC;

/*
5. Készítsen lekérdezést, amely kilistázza azokat a tudósokat, akik az elõadássorozatban
többször szerepeltek! Vegye figyelembe, hogy azonos nevû tudósok is szerepelnek
az adatbázisban! (5tobbszor)
*/


SELECT tudos.nev, count(tudosid) as Darab
	FROM tudos
	INNER JOIN kapcsolo ON tudos.id = kapcsolo.tudosid
	GROUP BY nev, tudosid, tudos.id
	HAVING count(tudosid) > 1 AND tudosid = tudos.id
	ORDER BY tudos.nev ASC;


/*
6. A szervezõk igyekeztek a havi elõadássorozatokat a tudományterületek szempontjából is
változatosan összeállítani. Készítsen lekérdezést, amely kilistázza, hogy a „Mit tud
az emberi agy?” címû elõadás elhangzásának évében és hónapjában milyen elõadások
voltak! Jelenítse meg az elõadás címét, elõadóját és az elõadó tudományterületét!
*/

SELECT cim, tudos.nev, tudos.terulet, Year(ido) as EV, Month(ido) as HO
	FROM eloadas
	INNER JOIN kapcsolo ON eloadas.id = kapcsolo.eloadasid
	INNER JOIN tudos ON tudos.id = kapcsolo.tudosid 
	WHERE Year(ido) =
(
SELECT Year(ido)
	FROM eloadas 
	where cim = 'Mit tud az emberi agy?'
) 
AND
	 Month(ido) = 
(
SELECT Month(ido)
	FROM eloadas 
	where cim = 'Mit tud az emberi agy?'
) 
 

