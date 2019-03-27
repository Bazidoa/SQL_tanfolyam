
/*
K�sz�tsen lek�rdez�st, amely megjelen�ti azon j�t�kosok vezet�k- �s ut�nev�t, akiknek
magyar �s k�lf�ldi �llampolg�rs�guk is van! (2kettos
*/
SELECT vezeteknev, utonev
	FROM labdarugo
	WHERE magyar = -1 AND kulfoldi = -1;

/*
A kapusokon k�v�l mindenkit mez�nyj�t�kosnak tekint�nk. K�sz�tsen lek�rdez�st, amely
megadja a legid�sebb mez�nyj�t�kos vezet�k- �s ut�nev�t, valamint sz�let�si d�tum�t!
(Felt�telezheti, hogy csak egy ilyen j�t�kos van.) (3leg)
*/

SELECT TOP 1 vezeteknev, utonev, szulido
	FROM labdarugo as lr
	INNER JOIN dbo.klub as k ON lr.klubid = k.id
	INNER JOIN dbo.poszt as p ON lr.posztid = p.id
	WHERE p.nev != 'Kapus'
	ORDER BY szulido ASC;

/*
K�sz�tsen lek�rdez�st, amely csapatonk�nt megjelen�ti a j�t�kosok �ssz�rt�k�t! A csapatok
neve �s a j�t�kosainak �ssz�rt�ke jelenjen meg! (4ertek)
*/

SELECT SUM(ertek) AS Osszertek, csapatnev
	FROM labdarugo as lr
	INNER JOIN dbo.klub as k ON lr.klubid = k.id
	GROUP BY csapatnev
	ORDER BY Osszertek DESC;

/*
K�sz�tsen lek�rdez�st egy k�lf�ldi menedzser sz�m�ra, amely megad minden olyan kapust
�s bal oldali j�t�kost, aki 1998-ban vagy k�s�bb sz�letett! A lek�rdez�sben jelenjen meg a
vezet�kn�v, a poszt �s a sz�let�si id�! (51998) 
*/

