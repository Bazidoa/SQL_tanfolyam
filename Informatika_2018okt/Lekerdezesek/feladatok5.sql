
/*
2. Készítsen lekérdezést, amely ábécérendben jeleníti meg az 1916-ban bemutatott mûvek
címét!
*/
SELECT cim, ev
	FROM dbo.mu
	WHERE ev = 1916
	ORDER BY cim ASC;


/*
3. Készítsen lekérdezést, amely kilistázza a „Bob herceg” címû mû alkotóit! Az alkotó neve
és közremûködésének típusa jelenjen meg! 
*/
SELECT a.nev, k.tipus
	FROM alkoto as a
	INNER JOIN kapcsolat as k ON a.id = k.alkotoid 
	INNER JOIN mu ON mu.id = k.muid
	WHERE cim ='Bob herceg'


/*
4. Készítsen lekérdezést, amely megadja azt az évet, amelyikben utoljára tartottak 
bemutatót!
*/

SELECT max(ev) as 'Utolso Bemutato'
	FROM mu;


/*
5. Készítsen lekérdezést, amely megjeleníti azt a három alkotót, aki a legtöbb operetthez
szerzett zenét! Az alkotó neve mellett a mûvek száma is legyen látható!
*/

SELECT TOP 3 nev, count(muid) as muvekszama
	FROM kapcsolat as k
	INNER JOIN alkoto AS a ON k.alkotoid = a.id
	--INNER JOIN mu ON k.muid = mu.id
	WHERE tipus = 'zene'
	GROUP BY nev, tipus
	ORDER BY count(muid) DESC;

/*
6. Készítsen jelentést, amely kilistázza a két világháború között (1919-tõl 1938-ig) bemutatott
operettek fõbb adatait! Az operetteket évek szerint csoportosítva, cím szerint ábécérendben
jelenítse meg! A szövegszerû tartalmat tekintve az alábbi minta legyen a meghatározó!
Biztosítsa, hogy minden érték látható legyen! A jelentést lekérdezéssel készítse elõ!
*/

SELECT cim, ev, szinhaz
	FROM mu
	WHERE ev BETWEEN 1918 AND 1938 
	GROUP BY cim, ev, szinhaz
	ORDER BY cim

/*
7. Számtalan operett alkototói között szerepel Harmath Imre. Készítsen lekérdezést, amely
felsorolja azon zeneszerzõk nevét, akikkel együtt dolgozott! Ügyeljen arra, hogy minden
zeneszerzõ pontosan egyszer jelenjen meg! 
*/
SELECT DISTINCT nev
FROM alkoto
INNER JOIN kapcsolat ON kapcsolat.alkotoid = alkoto.id
WHERE muid IN (
SELECT muid
	FROM kapcsolat
	INNER JOIN alkoto ON kapcsolat.alkotoid = alkoto.id
	WHERE alkoto.nev = 'Harmath Imre') and tipus = 'zene';


