use f1_campeonato_avancado;

SELECT
    p.nome AS piloto,
    COALESCE(r.pontos, 0) AS pontos
FROM pilotos p
LEFT JOIN resultados_corrida r
    ON p.id = r.piloto_id
    AND r.gp = 'GP de Interlagos';
