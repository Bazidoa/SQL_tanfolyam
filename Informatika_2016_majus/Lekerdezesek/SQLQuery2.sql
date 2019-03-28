/*
2. K�sz�tsen lek�rdez�st, amely kilist�zza azokat a sz�n�szeket, akik els�k�nt, azaz 2000.
augusztus 22-�n kapt�k meg a Nemzet Sz�n�sze c�met! Csak a neveket jelen�tse meg �
�b�c�rendben! (2eloszor)
*/

--CONCAT(YEAR(valasztas),'-',MONTH(valasztas),'-',DAY(valasztas)) as masodik
SELECT szinesz.nev, CONVERT(nvarchar(10),valasztas,23)
	FROM szinesz
	WHERE valasztas LIKE '2000-08-22%'
	ORDER BY szinesz.nev ASC;

/*
3. T�bb sz�n�sz nem a sz�let�si nev�n lett ismert. K�sz�tsen lek�rdez�st, amely megadja
azokat, akiket nem a sz�let�si nev�k�n ismer�nk! Mindk�t nevet jelen�tse meg! (3mas)
*/

SELECT nev, szuletesinev
	FROM szinesz
	WHERE nev <> szuletesinev;


/*
4. K�sz�tsen jelent�st, amely kilist�zza, hogy melyik sz�n�sz milyen elismer�sben r�szes�lt!
Az elismer�seket sz�n�szenk�nt csoportos�tva, azon bel�l id�rendben jelen�tse meg,
sz�vegszer� tartalm�t tekintve pedig az al�bbi minta legyen a meghat�roz�! Biztos�tsa,
hogy minden �rt�k l�that� legyen! A jelent�st lek�rdez�ssel k�sz�tse el�! (4elismeresek) 
*/

SELECT nev as 'szinesz neve', ev as 'mikor', megnevezes as 'elismeres megnevezese'
	FROM szinesz 
	INNER JOIN kapott ON szinesz.id = kapott.szineszid
	INNER JOIN elismeres ON elismeres.id = kapott.elismeresid
	ORDER BY [szinesz neve] ASC, mikor ASC

/*
5. K�sz�tsen lek�rdez�st, amely megadja, hogy mely kit�ntet�seket nyert el egy-egy sz�n�sz
t�bbsz�r is! A sz�n�sz nev�t �s az elismer�s megnevez�s�t jelen�tse meg! (5tobbszor)
*/

SELECT nev, megnevezes, COUNT(megnevezes) as Darab
	FROM szinesz 
	INNER JOIN kapott ON szinesz.id = kapott.szineszid
	INNER JOIN elismeres ON elismeres.id = kapott.elismeresid
	GROUP BY nev, megnevezes
	HAVING COUNT(megnevezes) > 1

/*
6. K�sz�tsen lek�rdez�st, amely kilist�zza az �sszes,
adatb�zisban szerepl� sz�n�sz nev�t, �s mindegyik�kn�l
megadja, hogy mely �vt�l mely �vig viselt�k a Nemzet
Sz�n�sze c�met! (Hi�nyz� d�tum eset�n ut�bbi mez�
�res maradhat.) A megjelen�t�s sorrendj�t a c�m
elnyer�s�nek d�tuma hat�rozza meg! (6tolig)
*/

SELECT nev, YEAR(valasztas) as evtol, YEAR (elhunyt) as evig 
	FROM szinesz
	--INNER JOIN kapott ON szinesz.id = kapott.szineszid
	--	INNER JOIN elismeres ON elismeres.id = kapott.elismeresid
		ORDER BY evtol ASC
	
/*
7. K�sz�tsen lek�rdez�st, amely megadja azoknak
a sz�n�szeknek a nev�t, akik 2012. janu�r 1-j�n viselt�k
a Nemzet Sz�n�sze c�met! Ha valakit �ppen azon
a napon v�lasztottak meg, vagy akkor hunyt el, szint�n
szerepeljen a list�ban! (�gyeljen az elhunyt mez� �res
�rt�keinek jelent�s�re!) (72012)
*/

SELECT nev	
	FROM szinesz
	WHERE valasztas <= CONVERT (datetime,'2012-01-01')  AND (elhunyt IS NULL OR elhunyt >= CONVERT (datetime,'2012-01-01') )
