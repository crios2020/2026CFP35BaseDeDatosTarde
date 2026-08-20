-- Clase04
drop database if exists clase04;
create database clase04;
use clase04;
drop table if exists clientes;
create table clientes(
	codigo int auto_increment primary key,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    cuit varchar(13),
    direccion varchar(50),
    comentarios varchar(255)
);
show tables;
describe clientes;
select * from clientes;				-- muestra los registros de la tabla
-- 				Excel: Columnas			BD: Camposs
-- 				Excel: Filas			BD: Registros

-- insertamos 1 registro
insert into clientes (nombre,apellido,direccion) values 
	('Cristian','Molina','Lima 234');

-- codeshare.io/crios2020
-- Laboratorio 1
-- 1- Borrar si existe la base de datos Agenda.
-- 2- Crear la base de datos Agenda.
-- 3- Ingresar a la base de datos creada.
-- 4- Crear una tabla llamada "agenda". Debe tener los siguientes campos:
--    nombre (cadena de 20), 
--    domicilio (cadena de 30)
--    telefono (cadena de 11)
-- 5- Visualizar las tablas existentes en la base de datos para verificar la creación de "agenda".
-- 6- Visualizar la estructura de campos de la tabla "agenda". (describe).
-- 7- Ingresar 10 registros con valores aleatorios.
select * from agenda;

-- TODO, Mostrar app java con BD completa