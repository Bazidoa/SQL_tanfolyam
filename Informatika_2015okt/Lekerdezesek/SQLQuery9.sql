/*
2. Készítsen lekérdezést, amely a széltoronnyal rendelkezõ települések nevét ábécérendben
listázza ki! (2telepulesek)
*/
SELECT Distinct nev
FROM helyszin
--INNER JOIN torony ON helyszin.id = torony.helyszinid
ORDER BY nev ASC


/*
3. Írassa ki lekérdezés segítségével azon települések nevét, ahol 2009 után állítottak
széltornyot! A listában minden településnév csak egyszer szerepeljen! (3u
*/
SELECT Distinct nev
FROM helyszin
INNER JOIN torony ON helyszin.id = torony.helyszinid
WHERE torony.kezdev > 2009
ORDER BY nev ASC;


/*
Készítsen lekérdezést, amely megadja annak a településnek a nevét és az üzembe helyezés
évét, ahol elõször állítottak széltornyot! (Elegendõ csak egy adatsort megjelenítenie.)
(4elso)
*/

SELECT TOP 1 nev, kezdev
	FROM helyszin
	INNER JOIN torony ON helyszin.id = torony.helyszinid 
	ORDER BY kezdev ASC;


/*5. Határozza meg régiónként, hogy hány településen van szélerõmû! A lista a települések
száma szerint csökkenõen jelenjen meg! (5regionkent)
*/

SELECT regio, count(helyszin.nev) as Darab
	FROM megye
	INNER JOIN helyszin ON megye.id = helyszin.megyeid
	GROUP BY regio
	ORDER BY Darab DESC;

/*
6. Készítsen lekérdezést, amely településenként kiszámítja, hogy az ott található tornyoknak
összesen mekkora a teljesítménye! A lekérdezés a települések nevét és a kiszámított
teljesítményértékeket jelenítse meg! (6osszes)
*/

SELECT nev, sum(darab*teljesitmeny) as Teljesitmeny
	FROM helyszin
	INNER JOIN torony ON helyszin.id = torony.helyszinid
	GROUP BY nev
	ORDER BY Teljesitmeny DESC;

/*
7. Készítsen jelentést, amely régiónként, azon belül megyénként csoportosítva megjeleníti,
hogy egy-egy településen hány széltorony van! A jelentés címe, a sorok és az oszlopok
sorrendje az alábbi mintának megfelelõen jelenjen meg! A jelentés többi jellemzõjét
szabadon választhatja meg. A jelentést lekérdezéssel készítse elõ! (7eloszlas)
*/

SELECT Distinct regio, megye.nev as Megye, helyszin.nev as Telepules, count(torony.darab) as 'Tornyok szama'
	FROM helyszin
	INNER JOIN torony ON helyszin.id = torony.helyszinid
	INNER JOIN megye ON helyszin.megyeid = megye.id
	GROUP BY regio, megye.nev, helyszin.nev;


--JUST 4 FUN
SELECT nev, darab, teljesitmeny-- sum (darab*teljesitmeny) as Osszero
	FROM helyszin
	INNER JOIN torony ON helyszin.id = torony.helyszinid
	WHERE nev = 'Levél'
	--GROUP BY nev