SELECT *
	FROM dbo.klub AS k
	FULL OUTER JOIN dbo.labdarugo as l
	on k.id = l.klubid

