SELECT ID, Markanev, TipusNev , Motorterfogat
	FROM dbo.Autok
	WHERE Motorterfogat>5000 AND Markanev = 'Opel';

/*t�bb 
soros megjegyz�s
*/

--egy soros megjegyz�s


SELECT ID,Markanev, tipusnev
	FROM dbo.Autok
	WHERE TipusNev = 'astra';


SELECT Id, markanev, tipusnev, motorterfogat
	FROM dbo.Autok
	ORDER BY MOTORTERFOGAT DESC;

SELECT Id, markanev, tipusnev, motorterfogat
	FROM dbo.Autok
	ORDER BY Markanev DESC, MOTORTERFOGAT ASC;