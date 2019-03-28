
/*
2. K�sz�tsen lek�rdez�st, amely �b�c�rendben jelen�ti meg az 1916-ban bemutatott m�vek
c�m�t!
*/
SELECT cim, ev
	FROM dbo.mu
	WHERE ev = 1916
	ORDER BY cim ASC;


/*
3. K�sz�tsen lek�rdez�st, amely kilist�zza a �Bob herceg� c�m� m� alkot�it! Az alkot� neve
�s k�zrem�k�d�s�nek t�pusa jelenjen meg! 
*/
SELECT a.nev, k.tipus
	FROM alkoto as a
	INNER JOIN kapcsolat as k ON a.id = k.alkotoid 
	INNER JOIN mu ON mu.id = k.muid
	WHERE cim ='Bob herceg'


/*
4. K�sz�tsen lek�rdez�st, amely megadja azt az �vet, amelyikben utolj�ra tartottak 
bemutat�t!
*/

SELECT max(ev) as 'Utolso Bemutato'
	FROM mu;


/*
5. K�sz�tsen lek�rdez�st, amely megjelen�ti azt a h�rom alkot�t, aki a legt�bb operetthez
szerzett zen�t! Az alkot� neve mellett a m�vek sz�ma is legyen l�that�!
*/

SELECT TOP 3 nev, count(muid) as muvekszama
	FROM kapcsolat as k
	INNER JOIN alkoto AS a ON k.alkotoid = a.id
	--INNER JOIN mu ON k.muid = mu.id
	WHERE tipus = 'zene'
	GROUP BY nev, tipus
	ORDER BY count(muid) DESC;

/*
6. K�sz�tsen jelent�st, amely kilist�zza a k�t vil�gh�bor� k�z�tt (1919-t�l 1938-ig) bemutatott
operettek f�bb adatait! Az operetteket �vek szerint csoportos�tva, c�m szerint �b�c�rendben
jelen�tse meg! A sz�vegszer� tartalmat tekintve az al�bbi minta legyen a meghat�roz�!
Biztos�tsa, hogy minden �rt�k l�that� legyen! A jelent�st lek�rdez�ssel k�sz�tse el�!
*/

SELECT cim, ev, szinhaz
	FROM mu
	WHERE ev BETWEEN 1918 AND 1938 
	GROUP BY cim, ev, szinhaz
	ORDER BY cim

/*
7. Sz�mtalan operett alkotot�i k�z�tt szerepel Harmath Imre. K�sz�tsen lek�rdez�st, amely
felsorolja azon zeneszerz�k nev�t, akikkel egy�tt dolgozott! �gyeljen arra, hogy minden
zeneszerz� pontosan egyszer jelenjen meg! 
*/
SELECT DISTINCT nev
FROM alkoto
INNER JOIN kapcsolat ON kapcsolat.alkotoid = alkoto.id
WHERE muid IN (
SELECT muid
	FROM kapcsolat
	INNER JOIN alkoto ON kapcsolat.alkotoid = alkoto.id
	WHERE alkoto.nev = 'Harmath Imre') and tipus = 'zene';


