use f1_campeonato_avancado;

SELECT fm.nome AS fabricante, e.nome AS equipe, p.nome AS piloto
FROM fabricantes_motor fm
RIGHT JOIN equipes e ON fm.id = e.motor_id
RIGHT JOIN pilotos p ON e.id = p.equipe_id;

use f1_campeonato_avancado;

SELECT p.nome AS piloto, r.gp, r.pontos
FROM resultados_corrida r
RIGHT JOIN pilotos p ON r.piloto_id = p.id
WHERE r.gp = 'GP de Interlagos';



use f1_campeonato_avancado;

SELECT e.nome AS equipe
FROM pilotos p
RIGHT JOIN equipes e ON e.id = p.equipe_id
WHERE p.id IS NULL;
