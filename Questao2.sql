use f1_campeonato_avancado;

SELECT
    fm.nome AS fabricante,
    COUNT(p.id) AS quantidade_pilotos
FROM equipes e
RIGHT JOIN fabricantes_motor fm
    ON e.motor_id = fm.id
LEFT JOIN pilotos p
    ON e.id = p.equipe_id
GROUP BY fm.id, fm.nome
ORDER BY quantidade_pilotos DESC;
