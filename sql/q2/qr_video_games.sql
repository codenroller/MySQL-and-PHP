SELECT 
	t1.id_jeux,
    t1.nom_jeux,
    t2.nom_proprietaire,
    t3.nom_console,
    t1.prix
FROM jeux_video as t1
	LEFT JOIN proprietaire as t2 ON t1.id_proprietaire = t2.id_proprietaire
    LEFT JOIN console as t3 ON t1.id_console = t3.id_console
ORDER by t1.nom_jeux;