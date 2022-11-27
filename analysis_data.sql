----------- Análise dos dados -----------


-- Calculando o total de viagens durante o ano de 2021
SELECT
    COUNT(*) AS "Total de Viagens"
FROM 2021_trips;


-- Calculando o total de viagens durante o ano de 2021 por tipo de usuário
SELECT
    user_type AS "Tipo de Usuário",
    COUNT(DISTINCT ride_id) AS "Total de Viagens"
FROM 2021_trips
GROUP BY 1;


-- Calculando o número de viagens por mês e pelo tipo de usuário
SELECT
    MONTH(started_at) AS nr_mes,
    mes AS "Mês",
    user_type AS "Tipo de Usuário",
    COUNT(DISTINCT ride_id) AS "Total de Viagens"
FROM 2021_trips
GROUP BY 2, 3
ORDER BY 1, 4 ASC;


-- Calculando o número de viagens pelas estações do ano
SELECT
    CASE
        WHEN season = 'inverno' THEN 1
        WHEN season = 'primavera' THEN 2
        WHEN season = 'verão' THEN 3
        ELSE 4
    END AS nr_season,
    season AS "Estação do Ano",
    COUNT(DISTINCT ride_id) AS "Total de Viagens"
FROM 2021_trips
GROUP BY 2
ORDER BY 1;


-- Calculando o número de viagens pelas estações do ano, mês e tipo de usuário
SELECT
    CASE
        WHEN season = 'inverno' THEN 1
        WHEN season = 'primavera' THEN 2
        WHEN season = 'verão' THEN 3
        ELSE 4
    END AS nr_season,
    season AS "Estação do Ano",
    MONTH(started_at) AS nr_mes,
    mes AS "Mês",
    user_type AS "Tipo de Usuário",
    COUNT(DISTINCT ride_id) AS "Total de Viagens"
FROM 2021_trips
GROUP BY 2, 4, 5
ORDER BY 1, 3;


-- Calculando o número de viagens pelo dia da semana
SELECT
    CASE
        WHEN day_of_week = 'domingo' THEN 1
        WHEN day_of_week = 'segunda' THEN 2
        WHEN day_of_week = 'terça' THEN 3
        WHEN day_of_week = 'quarta' THEN 4
        WHEN day_of_week = 'quinta' THEN 5
        WHEN day_of_week = 'sexta' THEN 6
        ELSE 7
    END AS nr_dia,
    day_of_week AS "Dia da Semana",
    COUNT(DISTINCT ride_id) AS "Total de Viagens"
FROM 2021_trips
GROUP BY 2
ORDER BY 1;


-- Calculando o número de viagens pelo dia da semana e tipo de usuário
SELECT
    CASE
        WHEN day_of_week = 'domingo' THEN 1
        WHEN day_of_week = 'segunda' THEN 2
        WHEN day_of_week = 'terça' THEN 3
        WHEN day_of_week = 'quarta' THEN 4
        WHEN day_of_week = 'quinta' THEN 5
        WHEN day_of_week = 'sexta' THEN 6
        ELSE 7
    END AS nr_dia,
    day_of_week AS "Dia da Semana",
    user_type AS " Tipo de Usuário",
    COUNT(DISTINCT ride_id) AS "Total de Viagens"
FROM 2021_trips
GROUP BY 2, 3
ORDER BY 1;


-- Calculando o número de viagens pelos turnos do dia
SELECT
    CASE
        WHEN part_of_day = 'manhã' THEN 1
        WHEN part_of_day = 'tarde' THEN 2
        WHEN part_of_day = 'noite' THEN 3
        ELSE 4
    END AS nr_turno,
    part_of_day AS "Turno",
    COUNT(DISTINCT ride_id) AS "Número de Viagens"
FROM 2021_trips
GROUP BY 2
ORDER BY 1;


-- Calculando o número de viagens pelos turnos do dia e tipos de usuários
SELECT
    CASE
        WHEN part_of_day = 'manhã' THEN 1
        WHEN part_of_day = 'tarde' THEN 2
        WHEN part_of_day = 'noite' THEN 3
        ELSE 4
    END AS nr_turno,
    part_of_day AS "Turno",
    user_type AS "Tipo de Usuário",
    COUNT(DISTINCT ride_id) AS "Número de Viagens"
FROM 2021_trips
GROUP BY 2, 3
ORDER BY 1;


-- Calculando o número de viagens por dia e pelos turnos do dia
SELECT
    CASE
        WHEN day_of_week = 'domingo' THEN 1
        WHEN day_of_week = 'segunda' THEN 2
        WHEN day_of_week = 'terça' THEN 3
        WHEN day_of_week = 'quarta' THEN 4
        WHEN day_of_week = 'quinta' THEN 5
        WHEN day_of_week = 'sexta' THEN 6
        ELSE 7
    END AS nr_dia,
    day_of_week AS "Dia da Semana",
    CASE
        WHEN part_of_day = 'manhã' THEN 1
        WHEN part_of_day = 'tarde' THEN 2
        WHEN part_of_day = 'noite' THEN 3
        ELSE 4
    END AS nr_turno,
    part_of_day AS "Turno",
    COUNT(DISTINCT ride_id) AS "Número de Viagens"
FROM 2021_trips
GROUP BY 2, 4
ORDER BY 1, 3;


-- Calculando o número de viagens por dia, pelos turnos e tipo de usuário
SELECT
    CASE
        WHEN day_of_week = 'domingo' THEN 1
        WHEN day_of_week = 'segunda' THEN 2
        WHEN day_of_week = 'terça' THEN 3
        WHEN day_of_week = 'quarta' THEN 4
        WHEN day_of_week = 'quinta' THEN 5
        WHEN day_of_week = 'sexta' THEN 6
        ELSE 7
    END AS nr_dia,
    day_of_week AS "Dia da Semana",
    CASE
        WHEN part_of_day = 'manhã' THEN 1
        WHEN part_of_day = 'tarde' THEN 2
        WHEN part_of_day = 'noite' THEN 3
        ELSE 4
    END AS nr_turno,
    part_of_day AS "Turno",
    user_type AS "Tipo de Usuário",
    COUNT(DISTINCT ride_id) AS "Número de Viagens"
FROM 2021_trips
GROUP BY 2, 4, 5
ORDER BY 1, 3, 5;


-- Calculando o número de viagens pelo estilo de bicicleta e tipo de usuário
SELECT
    bike_type AS "Tipo de Bike",
    user_type AS "Tipo de Usuário",
    COUNT(DISTINCT ride_id) AS "Número de Viagens"
FROM 2021_trips
GROUP BY 1, 2
ORDER BY 3;


-- Calculando o número de viagens por mês, pelo estilo de bicicleta e pelo tipo de usuário
SELECT
    MONTH(started_at) AS nr_mes,
    mes AS "Mês",
    bike_type AS "Tipo de Bike",
    user_type AS "Tipo de Usuário",
    COUNT(DISTINCT ride_id) AS "Total de Viagens"
FROM 2021_trips
GROUP BY 2, 4
ORDER BY 1, 5 ASC;


-- Calculando o número de viagens pelo estilo de bicicleta, tipo de usuário e dia da semana
SELECT
    CASE
        WHEN day_of_week = 'domingo' THEN 1
        WHEN day_of_week = 'segunda' THEN 2
        WHEN day_of_week = 'terça' THEN 3
        WHEN day_of_week = 'quarta' THEN 4
        WHEN day_of_week = 'quinta' THEN 5
        WHEN day_of_week = 'sexta' THEN 6
        ELSE 7
    END AS nr_dia,
    day_of_week AS "Dia da Semana",
    bike_type AS "Tipo de Bike",
    user_type AS "Tipo de Usuário",
    COUNT(DISTINCT ride_id) AS "Número de Viagens"
FROM 2021_trips
GROUP BY 2, 3, 4
ORDER BY 1;


-- Calculando a média da duração total das viagens e pelo tipo de usuário em minutos
SELECT
    COALESCE((user_type), 'Total') AS "Tipo do Usuário",
    ROUND(AVG(ride_time/60), 2) AS avg_rides
FROM 2021_trips
GROUP BY user_type WITH ROLLUP;


-- Calculando a média da duração das viagens pelo dia da semana e tipo de usuário em minutos
SELECT
    CASE
        WHEN day_of_week = 'domingo' THEN 1
        WHEN day_of_week = 'segunda' THEN 2
        WHEN day_of_week = 'terça' THEN 3
        WHEN day_of_week = 'quarta' THEN 4
        WHEN day_of_week = 'quinta' THEN 5
        WHEN day_of_week = 'sexta' THEN 6
        ELSE 7
    END AS nr_dia,
    day_of_week AS "Dia da Semana",
    user_type AS "Tipo de Usuário",
    ROUND(AVG(ride_time/60), 0) AS avg_rides
FROM 2021_trips
GROUP BY 2, 3
ORDER BY 1, 3;


-- Calculando o número de viagens por estações utilizadas pelos usuários "casual" para o início da viagem e sua localização geográfica
SELECT
    user_type AS "Tipo de Usuário",
    start_station_name AS "Estação Inicial",
    ROUND(AVG(start_lat), 6) AS latitude,
    ROUND(AVG(start_lng), 6) AS longitude,
    COUNT(start_station_name) AS "Número de Viagens"
FROM 2021_trips
WHERE user_type LIKE 'casual%' AND start_station_name <> ''
GROUP BY 2
ORDER BY 5 DESC;


-- Calculando as 10 principais estações utilizadas pelos usuários "casual" para o início da viagem e sua localização geográfica
SELECT
    user_type AS "Tipo de Usuário",
    start_station_name AS "Estação Inicial",
    ROUND(AVG(start_lat), 6) AS latitude,
    ROUND(AVG(start_lng), 6) AS longitude,
    COUNT(start_station_name) AS "Número de Viagens"
FROM 2021_trips
WHERE user_type LIKE 'casual%' AND start_station_name <> ''
GROUP BY 2
ORDER BY 5 DESC
LIMIT 10;


-- Calculando o número de viagens por estações utilizadas pelos usuários "casual" para finalizar a viagem e sua localização geográfica
SELECT
    user_type AS "Tipo de Usuário",
    end_station_name AS "Estação Final",
    ROUND(AVG(end_lat), 6) AS latitude,
    ROUND(AVG(end_lng), 6) AS longitude,
    COUNT(end_station_name) AS "Número de Viagens"
FROM 2021_trips
WHERE user_type LIKE 'casual%' AND end_station_name <> ''
GROUP BY end_station_name
ORDER BY 5 DESC;


-- Calculando as 10 principais estações utilizadas pelos usuários "casual" para finalizar a viagem e sua localização geográfica
SELECT
    user_type AS "Tipo de Usuário",
    end_station_name AS "Estação Final",
    ROUND(AVG(end_lat), 6) AS latitude,
    ROUND(AVG(end_lng), 6) AS longitude,
    COUNT(end_station_name) AS "Número de Viagens"
FROM 2021_trips
WHERE user_type LIKE 'casual%' AND end_station_name <> ''
GROUP BY end_station_name
ORDER BY 5 DESC
LIMIT 10;


-- Calculando as 10 principais estações utilizadas pelos usuários "member" para o início da viagem e sua localização geográfica
SELECT
    user_type AS "Tipo de Usuário",
    start_station_name AS "Estação Inicial",
    ROUND(AVG(start_lat), 6) AS latitude,
    ROUND(AVG(start_lng), 6) AS longitude,
    COUNT(start_station_name) AS "Número de Viagens"
FROM 2021_trips
WHERE user_type LIKE 'member%' AND start_station_name <> ''
GROUP BY 2
ORDER BY 5 DESC
LIMIT 10;


-- Calculando as 10 principais estações utilizadas pelos usuários "member" para finalizar a viagem e sua localização geográfica
SELECT
    user_type AS "Tipo de Usuário",
    end_station_name AS "Estação Final",
    ROUND(AVG(end_lat), 6) AS latitude,
    ROUND(AVG(end_lng), 6) AS longitude,
    COUNT(end_station_name) AS "Número de Viagens"
FROM 2021_trips
WHERE user_type LIKE 'member%' AND end_station_name <> ''
GROUP BY end_station_name
ORDER BY 5 DESC
LIMIT 10;