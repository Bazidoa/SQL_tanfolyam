/*
2. Készítsen lekérdezést, amely a mellékhatással rendelkezõ adalékanyagok nevét
ábécérendben sorolja fel! (2kerulendo)
*/

SELECT nev
	FROM adalek
	WHERE mellekhatas <> 0
	ORDER BY nev Asc

/*
3. Készítsen lekérdezést, amely kilistázza azon adalékanyagok funkcióit, amelyek neve
a „karamell” szórészletet tartalmazza! A felsorolásban minden funkciónév egyszer jelenjen
meg! (3karamell)
*/

SELECT fnev
	FROM funkcio
	INNER JOIN adalek ON adalek.kod = funkcio.kod
	WHERE adalek.nev LIKE '%karamell%'
	GROUP BY fnev;


/*
4. Néhány adalékanyagnak többféle hatása is van. Adja meg lekérdezés segítségével a legtöbb
hatással rendelkezõ adalékanyagok közül LEGALÁBB egynek a kódját és funkcióinak számát!
*/

SELECT TOP 3 adalek.nev,adalek.kod , count(fnev) as 'Funckiok Szama'
	FROM adalek
	JOIN funkcio ON adalek.kod = funkcio.kod
	GROUP BY nev, adalek.kod
	ORDER BY [Funckiok Szama] DESC

/*
5. Készítsen lekérdezést, amely azokat a funkciókat listázza ki, amelyek legalább
50 adalékanyag hatásai között megvannak! (5multi)
*/



SELECT fnev, count (adalek.kod) as Darab
	FROM funkcio
	INNER JOIN adalek ON funkcio.kod = adalek.kod
	GROUP BY fnev
	HAVING count (adalek.kod) >= 50
	ORDER BY Darab DESC;


/*
6. „sav” és az „anti” szórészlet olvasható ki. Készítsen
lekérdezést, amely meghatározza azoknak az adalékanyagoknak a kódját, amelyek funkciói
ezeket a szórészleteket tartalmazzák! A felsorolásban minden kód csak egyszer jelenjen
meg! (6kopott)
*/

SELECT distinct f1.kod--, f1.fnev, f2.fnev
	FROM funkcio as f1
	INNER JOIN funkcio as f2
	 ON f1.kod = f2.kod
	WHERE f1.fnev LIKE '%sav%' AND f2.fnev LIKE '%anti%'
	--GROUP BY f1.fnev, f2.fnev;

/*
Készítsen jelentést, amely kilistázza, hogy az egyes funkciókhoz hány adalékanyag-kód
tartozik! A lista a darabszám szerint csökkenõ sorrendben jelenjen meg! 
*/

SELECT fnev, count(kod) as Darabszam
	FROM funkcio
	GROUP BY fnev
	ORDER BY Darabszam DESC;
