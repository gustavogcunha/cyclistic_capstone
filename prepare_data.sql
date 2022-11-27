----------- Preparando os dados -----------

-- Criando o Banco de Dados
CREATE SCHEMA `bike_share`;

-- Selecionando o Banco de Dados
USE bike_share;

-- Criando as tabelas
CREATE TABLE 01_2021 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 02_2021 (
	ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 03_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 04_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 05_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 06_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 07_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 08_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 09_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 10_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 11_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

CREATE TABLE 12_2021 (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

-- Habilitando o carregamento dos dados
SET GLOBAL local_infile = 1;
    
-- Carregando os dados para as tabelas criadas
LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202101-divvy-tripdata.csv'
INTO TABLE 01_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202102-divvy-tripdata.csv'
INTO TABLE 02_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202103-divvy-tripdata.csv'
INTO TABLE 03_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202104-divvy-tripdata.csv'
INTO TABLE 04_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202105-divvy-tripdata.csv'
INTO TABLE 05_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202106-divvy-tripdata.csv'
INTO TABLE 06_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202107-divvy-tripdata.csv'
INTO TABLE 07_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202108-divvy-tripdata.csv'
INTO TABLE 08_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202109-divvy-tripdata.csv'
INTO TABLE 09_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202110-divvy-tripdata.csv'
INTO TABLE 10_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202111-divvy-tripdata.csv'
INTO TABLE 11_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:/Users/ggcun/Capstone_Bike_Share/202112-divvy-tripdata.csv'
INTO TABLE 12_2021
CHARACTER SET UTF8
FIELDS TERMINATED BY ','
IGNORE 1 LINES;
    
-- Criando uma nova tabela anual
 CREATE TABLE 2021_trips (
    ride_id varchar(255),
    rideable_type varchar(255),
    started_at datetime,
    ended_at datetime,
    start_station_name varchar(255),
    start_station_id double,
    end_station_name varchar(255),
    end_station_id double,
    start_lat float,
    start_lng float,
    end_lat float,
    end_lng float,
    member_casual varchar(255));

-- Juntando as tabelas mensais na tabela anual
INSERT INTO 2021_trips
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 01_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 02_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 03_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 04_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 05_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 06_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 07_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 08_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 09_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 10_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 11_2021
UNION
SELECT
    ride_id, rideable_type, started_at, ended_at, start_station_name,
    start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng,
    member_casual
FROM 12_2021;

-- Adicionando novas colunas
ALTER TABLE 2021_trips
ADD ride_time int AFTER ended_at,
ADD mes varchar(255) AFTER ride_time,
ADD season varchar(255) AFTER mes,
ADD day_of_week varchar(255) AFTER season,
ADD part_of_day varchar(255) AFTER day_of_week;

-- Aletrando o nome das colunas "member_casual" e "rideable_type"
ALTER TABLE 2021_trips
CHANGE COLUMN member_casual user_type VARCHAR(255),
CHANGE COLUMN rideable_type bike_type VARCHAR(255);

-- Adicionando informações as novas colunas
SET SQL_SAFE_UPDATES = 0;

-- Selecionando o padrão de datatime em português do Brasil
SET lc_time_names = 'pt_BR';

-- Calculando a duração da viagem (em segundos), mês, estação do ano, dia da semana e turno do dia
UPDATE 2021_trips
SET ride_time = TIMESTAMPDIFF(SECOND, started_at, ended_at),
    mes = MONTHNAME(started_at),
    season = (CASE
        WHEN MONTHNAME(started_at) in ('janeiro', 'fevereiro', 'dezembro') THEN "inverno"
        WHEN MONTHNAME(started_at) in ('março', 'abril', 'maio') THEN "primavera"
        WHEN MONTHNAME(started_at) in ('junho', 'julho', 'agosto') THEN "verão"
        WHEN MONTHNAME(started_at) in ('setembro', 'outubro', 'novembro') THEN "outono"
        ELSE season
    END),
    day_of_week = DAYNAME(started_at),
    part_of_day = (CASE
        WHEN TIME(started_at) >= '06:00:00' AND TIME(started_at) < '12:00:00' THEN "manhã"
        WHEN TIME(started_at) >= '12:00:00' AND TIME(started_at) < '18:00:00' THEN "tarde"
        WHEN TIME(started_at) >= '18:00:00' AND TIME(started_at) <= '23:59:59' THEN "noite"
        WHEN TIME(started_at) >= '00:00:00' AND TIME(started_at) < '06:00:00' THEN "magrugada"
        ELSE part_of_day
    END);

SET SQL_SAFE_UPDATES = 1;