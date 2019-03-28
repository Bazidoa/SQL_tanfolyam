/*
2. K�sz�tsen lek�rdez�st, amely a sz�ltoronnyal rendelkez� telep�l�sek nev�t �b�c�rendben
list�zza ki! (2telepulesek)
*/
SELECT Distinct nev
FROM helyszin
--INNER JOIN torony ON helyszin.id = torony.helyszinid
ORDER BY nev ASC


/*
3. �rassa ki lek�rdez�s seg�ts�g�vel azon telep�l�sek nev�t, ahol 2009 ut�n �ll�tottak
sz�ltornyot! A list�ban minden telep�l�sn�v csak egyszer szerepeljen! (3u
*/
SELECT Distinct nev
FROM helyszin
INNER JOIN torony ON helyszin.id = torony.helyszinid
WHERE torony.kezdev > 2009
ORDER BY nev ASC;


/*
K�sz�tsen lek�rdez�st, amely megadja annak a telep�l�snek a nev�t �s az �zembe helyez�s
�v�t, ahol el�sz�r �ll�tottak sz�ltornyot! (Elegend� csak egy adatsort megjelen�tenie.)
(4elso)
*/

SELECT TOP 1 nev, kezdev
	FROM helyszin
	INNER JOIN torony ON helyszin.id = torony.helyszinid 
	ORDER BY kezdev ASC;


/*5. Hat�rozza meg r�gi�nk�nt, hogy h�ny telep�l�sen van sz�ler�m�! A lista a telep�l�sek
sz�ma szerint cs�kken�en jelenjen meg! (5regionkent)
*/

SELECT regio, count(helyszin.nev) as Darab
	FROM megye
	INNER JOIN helyszin ON megye.id = helyszin.megyeid
	GROUP BY regio
	ORDER BY Darab DESC;

/*
6. K�sz�tsen lek�rdez�st, amely telep�l�senk�nt kisz�m�tja, hogy az ott tal�lhat� tornyoknak
�sszesen mekkora a teljes�tm�nye! A lek�rdez�s a telep�l�sek nev�t �s a kisz�m�tott
teljes�tm�ny�rt�keket jelen�tse meg! (6osszes)
*/

SELECT nev, sum(darab*teljesitmeny) as Teljesitmeny
	FROM helyszin
	INNER JOIN torony ON helyszin.id = torony.helyszinid
	GROUP BY nev
	ORDER BY Teljesitmeny DESC;

/*
7. K�sz�tsen jelent�st, amely r�gi�nk�nt, azon bel�l megy�nk�nt csoportos�tva megjelen�ti,
hogy egy-egy telep�l�sen h�ny sz�ltorony van! A jelent�s c�me, a sorok �s az oszlopok
sorrendje az al�bbi mint�nak megfelel�en jelenjen meg! A jelent�s t�bbi jellemz�j�t
szabadon v�laszthatja meg. A jelent�st lek�rdez�ssel k�sz�tse el�! (7eloszlas)
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
	WHERE nev = 'Lev�l'
	--GROUP BY nev