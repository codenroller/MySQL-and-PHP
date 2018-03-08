/* Version 1 */
SELECT 
	id_jeux,
    nom_jeux,
    nom_proprietaire,
    nom_console,
    prix
FROM jeux_video.vw_video_games as t0
WHERE nom_jeux LIKE 'M%'
ORDER BY id_jeux;

/* Version 2 */
SELECT 
	t1.id_jeux,
    t1.nom_jeux,
    t3.nom_proprietaire,
    t2.nom_console,
    t1.prix    
FROM jeux_video.jeux_video as t1
	LEFT JOIN jeux_video.console as t2 ON t1.id_console = t2.id_console
    LEFT JOIN jeux_video.proprietaire as t3 ON t1.id_proprietaire = t3.id_proprietaire
WHERE t1.nom_jeux LIKE 'M%'
ORDER BY id_jeux;