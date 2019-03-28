/*INSERT INTO dbo.klub
	(id, csapatnev)
	VALUES 
	(17, 'Alexa SC');
*/

--LEFT OUTER JOIN 
SELECT * 
	FROM dbo.klub AS k
	LEFT OUTER JOIN dbo.labdarugo AS l ON k.id = l.klubid
	ORDER BY k.id DESC;

-- LEFT OUTER JOIN-ból AZOK A REKORDOK AMIK NINCSENEK A METSZETBEN
SELECT * 
	FROM dbo.klub AS k
	LEFT OUTER JOIN dbo.labdarugo AS l ON k.id = l.klubid
	WHERE l.id IS NULL
	ORDER BY klubid ASC;

