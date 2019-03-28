/*
2. K�sz�tsen lek�rdez�st, amely a mell�khat�ssal rendelkez� adal�kanyagok nev�t
�b�c�rendben sorolja fel! (2kerulendo)
*/

SELECT nev
	FROM adalek
	WHERE mellekhatas <> 0
	ORDER BY nev Asc

/*
3. K�sz�tsen lek�rdez�st, amely kilist�zza azon adal�kanyagok funkci�it, amelyek neve
a �karamell� sz�r�szletet tartalmazza! A felsorol�sban minden funkci�n�v egyszer jelenjen
meg! (3karamell)
*/

SELECT fnev
	FROM funkcio
	INNER JOIN adalek ON adalek.kod = funkcio.kod
	WHERE adalek.nev LIKE '%karamell%'
	GROUP BY fnev;


/*
4. N�h�ny adal�kanyagnak t�bbf�le hat�sa is van. Adja meg lek�rdez�s seg�ts�g�vel a legt�bb
hat�ssal rendelkez� adal�kanyagok k�z�l LEGAL�BB egynek a k�dj�t �s funkci�inak sz�m�t!
*/

SELECT TOP 3 adalek.nev,adalek.kod , count(fnev) as 'Funckiok Szama'
	FROM adalek
	JOIN funkcio ON adalek.kod = funkcio.kod
	GROUP BY nev, adalek.kod
	ORDER BY [Funckiok Szama] DESC

/*
5. K�sz�tsen lek�rdez�st, amely azokat a funkci�kat list�zza ki, amelyek legal�bb
50 adal�kanyag hat�sai k�z�tt megvannak! (5multi)
*/



SELECT fnev, count (adalek.kod) as Darab
	FROM funkcio
	INNER JOIN adalek ON funkcio.kod = adalek.kod
	GROUP BY fnev
	HAVING count (adalek.kod) >= 50
	ORDER BY Darab DESC;


/*
6. �sav� �s az �anti� sz�r�szlet olvashat� ki. K�sz�tsen
lek�rdez�st, amely meghat�rozza azoknak az adal�kanyagoknak a k�dj�t, amelyek funkci�i
ezeket a sz�r�szleteket tartalmazz�k! A felsorol�sban minden k�d csak egyszer jelenjen
meg! (6kopott)
*/

SELECT distinct f1.kod--, f1.fnev, f2.fnev
	FROM funkcio as f1
	INNER JOIN funkcio as f2
	 ON f1.kod = f2.kod
	WHERE f1.fnev LIKE '%sav%' AND f2.fnev LIKE '%anti%'
	--GROUP BY f1.fnev, f2.fnev;

/*
K�sz�tsen jelent�st, amely kilist�zza, hogy az egyes funkci�khoz h�ny adal�kanyag-k�d
tartozik! A lista a darabsz�m szerint cs�kken� sorrendben jelenjen meg! 
*/

SELECT fnev, count(kod) as Darabszam
	FROM funkcio
	GROUP BY fnev
	ORDER BY Darabszam DESC;
