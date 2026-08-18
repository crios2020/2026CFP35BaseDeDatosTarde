-- Linea de comentarios

/* 
	Bloque
    de 
    comentarios
*/

/* Bloque de comentarios */

show databases;					-- muestra las BDs del server

-- ; es el terminador de sentencias en MySQL
-- ctrol - enter se ejecuta una sentencencia
SHOW DATABASES;					-- Lenguajes no es case sensitive

drop database if exists clase01;		-- borra la bd clase01

create database if not exists clase01;	-- crea la bd clase01 

use clase01;							-- activa la bd clase01

show tables;							-- muestras las tablas de la bd

drop table if exists clientes;			-- Borrra la tabla clientes
create table clientes(
	codigo int auto_increment primary key,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    cuit varchar(13),
    dirección varchar(50),
    comentarios varchar(250)
);

describe clientes;					-- muestra el metadato de la tabla
