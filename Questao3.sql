use f1_campeonato_avancado;

SELECT
    e.id,
    e.nome,
    e.motor_id
FROM equipes e
RIGHT JOIN fabricantes_motor fm
    ON e.motor_id = fm.id
WHERE fm.id IS NULL

UNION

SELECT
    e.id,
    e.nome,
    e.motor_id
FROM fabricantes_motor fm
RIGHT JOIN equipes e
    ON fm.id = e.motor_id
WHERE fm.id IS NULL;
