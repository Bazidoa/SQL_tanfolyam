--UNION p�lda

SELECT id, csapatnev
	FROM klub

UNION

SELECT id , nev
	FROM poszt
	ORDER BY id desc;
	