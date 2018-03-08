SELECT 
	t1.id_jeux, 
    t1.nom_jeux,
    t1.id_console,
    t2.id_console as matching_console_id
FROM jeux_video.jeux_video t1
LEFT JOIN jeux_video.console t2 ON t1.id_console = t2.id_console
WHERE t2.id_console IS NULL;