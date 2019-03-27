
/*
Készítsen lekérdezést, amely megjeleníti azon játékosok vezeték- és utónevét, akiknek
magyar és külföldi állampolgárságuk is van! (2kettos
*/
SELECT vezeteknev, utonev
	FROM labdarugo
	WHERE magyar = -1 AND kulfoldi = -1;

/*
A kapusokon kívül mindenkit mezõnyjátékosnak tekintünk. Készítsen lekérdezést, amely
megadja a legidõsebb mezõnyjátékos vezeték- és utónevét, valamint születési dátumát!
(Feltételezheti, hogy csak egy ilyen játékos van.) (3leg)
*/

SELECT TOP 1 vezeteknev, utonev, szulido
	FROM labdarugo as lr
	INNER JOIN dbo.klub as k ON lr.klubid = k.id
	INNER JOIN dbo.poszt as p ON lr.posztid = p.id
	WHERE p.nev != 'Kapus'
	ORDER BY szulido ASC;

/*
Készítsen lekérdezést, amely csapatonként megjeleníti a játékosok összértékét! A csapatok
neve és a játékosainak összértéke jelenjen meg! (4ertek)
*/

SELECT SUM(ertek) AS Osszertek, csapatnev
	FROM labdarugo as lr
	INNER JOIN dbo.klub as k ON lr.klubid = k.id
	GROUP BY csapatnev
	ORDER BY Osszertek DESC;

/*
Készítsen lekérdezést egy külföldi menedzser számára, amely megad minden olyan kapust
és bal oldali játékost, aki 1998-ban vagy késõbb született! A lekérdezésben jelenjen meg a
vezetéknév, a poszt és a születési idõ! (51998) 
*/


SELECT vezeteknev, mezszam 
	FROM dbo.labdarugo
	WHERE klubid = 
	(
		SELECT klubid
			FROM dbo.labdarugo
			WHERE vezeteknev = 'Lanzafame'
	)
	ORDER BY mezszam;


/*duna tisza közi csapatokat kérdezzük le*/
SELECT *
	FROM labdarugo
		WHERE klubid IN
		(
		SELECT klubid FROM labdarugo WHERE klubid =4 OR klubid = 11
			--ez akkor lenne király ha az allekérdezésben lehetne megadni h egy bizonyos feltételt nem beégetni 2 adatot 
		);


/*allekrédezés tábla szerepben*/
SELECT *
FROM (
SELECT vezeteknev, utonev FROM labdarugo WHERE vezeteknev LIKE '%ko%'
) as KOk;

/*
Insert INTO klub tabla a new team
*/

INSERT INTO klub (id, csapatnev)
VALUES 
	(15, 'Budapest Titans')
	,(16, 'TD Store Eagles'); 		



/*
legolcsóbb játékos kiválasztása
*/

SELECT vezeteknev, ertek, p.nev
	FROM labdarugo
	INNER JOIN dbo.poszt as p ON labdarugo.posztid = p.id 
	WHERE ertek = (SELECT min(ertek) FROM labdarugo);


/*
legdragabb játékos kiválasztása
*/

SELECT vezeteknev, ertek, p.nev
	FROM labdarugo
	INNER JOIN dbo.poszt as p ON labdarugo.posztid = p.id 
	WHERE ertek = (SELECT max(ertek) FROM labdarugo);
