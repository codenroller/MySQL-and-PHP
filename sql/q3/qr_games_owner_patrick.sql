SELECT t1.nom_proprietaire as owner, t2.nom_jeux as game
FROM proprietaire as t1
	LEFT JOIN jeux_video as t2 
		ON t1.id_proprietaire = t2.id_proprietaire
WHERE t1.nom_proprietaire = 'Patrick'
ORDER BY t2.nom_jeux;