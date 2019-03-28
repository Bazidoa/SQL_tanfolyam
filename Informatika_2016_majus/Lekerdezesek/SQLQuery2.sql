/*
2. Készítsen lekérdezést, amely kilistázza azokat a színészeket, akik elsõként, azaz 2000.
augusztus 22-én kapták meg a Nemzet Színésze címet! Csak a neveket jelenítse meg –
ábécérendben! (2eloszor)
*/

--CONCAT(YEAR(valasztas),'-',MONTH(valasztas),'-',DAY(valasztas)) as masodik
SELECT szinesz.nev, CONVERT(nvarchar(10),valasztas,23)
	FROM szinesz
	WHERE valasztas LIKE '2000-08-22%'
	ORDER BY szinesz.nev ASC;

/*
3. Több színész nem a születési nevén lett ismert. Készítsen lekérdezést, amely megadja
azokat, akiket nem a születési nevükön ismerünk! Mindkét nevet jelenítse meg! (3mas)
*/

SELECT nev, szuletesinev
	FROM szinesz
	WHERE nev <> szuletesinev;


/*
4. Készítsen jelentést, amely kilistázza, hogy melyik színész milyen elismerésben részesült!
Az elismeréseket színészenként csoportosítva, azon belül idõrendben jelenítse meg,
szövegszerû tartalmát tekintve pedig az alábbi minta legyen a meghatározó! Biztosítsa,
hogy minden érték látható legyen! A jelentést lekérdezéssel készítse elõ! (4elismeresek) 
*/

SELECT nev as 'szinesz neve', ev as 'mikor', megnevezes as 'elismeres megnevezese'
	FROM szinesz 
	INNER JOIN kapott ON szinesz.id = kapott.szineszid
	INNER JOIN elismeres ON elismeres.id = kapott.elismeresid
	ORDER BY [szinesz neve] ASC, mikor ASC

/*
5. Készítsen lekérdezést, amely megadja, hogy mely kitüntetéseket nyert el egy-egy színész
többször is! A színész nevét és az elismerés megnevezését jelenítse meg! (5tobbszor)
*/

SELECT nev, megnevezes, COUNT(megnevezes) as Darab
	FROM szinesz 
	INNER JOIN kapott ON szinesz.id = kapott.szineszid
	INNER JOIN elismeres ON elismeres.id = kapott.elismeresid
	GROUP BY nev, megnevezes
	HAVING COUNT(megnevezes) > 1

/*
6. Készítsen lekérdezést, amely kilistázza az összes,
adatbázisban szereplõ színész nevét, és mindegyiküknél
megadja, hogy mely évtõl mely évig viselték a Nemzet
Színésze címet! (Hiányzó dátum esetén utóbbi mezõ
üres maradhat.) A megjelenítés sorrendjét a cím
elnyerésének dátuma határozza meg! (6tolig)
*/

SELECT nev, YEAR(valasztas) as evtol, YEAR (elhunyt) as evig 
	FROM szinesz
	--INNER JOIN kapott ON szinesz.id = kapott.szineszid
	--	INNER JOIN elismeres ON elismeres.id = kapott.elismeresid
		ORDER BY evtol ASC
	
/*
7. Készítsen lekérdezést, amely megadja azoknak
a színészeknek a nevét, akik 2012. január 1-jén viselték
a Nemzet Színésze címet! Ha valakit éppen azon
a napon választottak meg, vagy akkor hunyt el, szintén
szerepeljen a listában! (Ügyeljen az elhunyt mezõ üres
értékeinek jelentésére!) (72012)
*/

SELECT nev	
	FROM szinesz
	WHERE valasztas <= CONVERT (datetime,'2012-01-01')  AND (elhunyt IS NULL OR elhunyt >= CONVERT (datetime,'2012-01-01') )
