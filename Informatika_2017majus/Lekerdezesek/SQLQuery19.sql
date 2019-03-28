/*
2. K�sz�tsen lek�rdez�st, amely a 2006-ban elhangzott el�ad�sok c�m�t �s d�tum�t
�b�c�rendben sorolja fel! (2cimek)
*/
SELECT cim,ido
	FROM eloadas
	WHERE Year(ido) = 2006
	ORDER BY cim ASC;

/*
3. K�sz�tsen lek�rdez�st, amely kilist�zza azokat az el�ad�sokat, amelyek c�me a �nyelv�
sz�r�szletet tartalmazza! A felsorol�sban az el�ad� tud�s neve �s el�ad�s�nak c�me jelenjen
meg! (3nyelv)
*/

SELECT cim, nev
	FROM eloadas
	INNER JOIN kapcsolo ON eloadas.id = kapcsolo.eloadasid
	INNER JOIN tudos ON tudos.id = kapcsolo.tudosid 
	WHERE cim LIKE '%nyelv%';

/*
4. K�sz�tsen lek�rdez�st, amely tudom�nyter�letenk�nt megadja az el�ad� tud�sok sz�m�t!
A list�ban a tudom�nyter�let neve �s a tud�sok sz�ma jelenjen meg az ut�bbi szerint cs�kken� sorrendben.
*/

SELECT terulet, count(nev) as 'Tudosok szama'
	FROM tudos
	GROUP BY terulet
	ORDER BY [Tudosok szama] DESC;

/*
5. K�sz�tsen lek�rdez�st, amely kilist�zza azokat a tud�sokat, akik az el�ad�ssorozatban
t�bbsz�r szerepeltek! Vegye figyelembe, hogy azonos nev� tud�sok is szerepelnek
az adatb�zisban! (5tobbszor)
*/


SELECT tudos.nev, count(tudosid) as Darab
	FROM tudos
	INNER JOIN kapcsolo ON tudos.id = kapcsolo.tudosid
	GROUP BY nev, tudosid, tudos.id
	HAVING count(tudosid) > 1 AND tudosid = tudos.id
	ORDER BY tudos.nev ASC;


/*
6. A szervez�k igyekeztek a havi el�ad�ssorozatokat a tudom�nyter�letek szempontj�b�l is
v�ltozatosan �ssze�ll�tani. K�sz�tsen lek�rdez�st, amely kilist�zza, hogy a �Mit tud
az emberi agy?� c�m� el�ad�s elhangz�s�nak �v�ben �s h�napj�ban milyen el�ad�sok
voltak! Jelen�tse meg az el�ad�s c�m�t, el�ad�j�t �s az el�ad� tudom�nyter�let�t!
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
 

