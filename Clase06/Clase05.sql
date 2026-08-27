-- codeshare.io/crios2020
-- Laboratorio 1
-- 1- Borrar si existe la base de datos Agenda.
drop database if exists agenda;
-- 2- Crear la base de datos Agenda.
create database agenda;
-- 3- Ingresar a la base de datos creada.
use agenda;
-- 4- Crear una tabla llamada "agenda". Debe tener los siguientes campos:
--    nombre (cadena de 20), 
--    domicilio (cadena de 30)
--    telefono (cadena de 11)
drop table if exists agenda;
create table agenda(
	nombre varchar(20),
    domicilio varchar(30),
    telefono varchar(11)
);
-- 5- Visualizar las tablas existentes en la base de datos para verificar la creación de "agenda".
show tables;
-- 6- Visualizar la estructura de campos de la tabla "agenda". (describe).
describe agenda;
-- 7- Ingresar 10 registros con valores aleatorios.
INSERT INTO agenda (nombre, domicilio, telefono) VALUES
('Juan Perez', 'Av. Rivadavia 1250', '1145678901'),
('Maria Gonzalez', 'Belgrano 2345', '1156789012'),
('Carlos Fernandez', 'Sarmiento 1876', '1167890123'),
('Laura Martinez', 'Mitre 3421', '1178901234'),
('Diego Rodriguez', 'Alsina 1567', '1143210987'),
('Ana Lopez', 'Moreno 2789', '1154321098'),
('Pedro Sanchez', 'Ituzaingo 4512', '1165432109'),
('Sofia Ramirez', 'Lavalle 3210', '1176543210'),
('Martin Torres', 'Rivadavia 5678', '1147654321'),
('Claudia Diaz', 'Belgrano 1987', '1158765432');
select * from agenda;


-- ------------------------
-- Definiciones importantes
-- ------------------------

-- Significado de SQL
-- Structured Query Language

-- ANSI SQL
-- En la actualidad el SQL es el estándar de facto de la inmensa mayoría de los SGBD comerciales.
-- Y, aunque la diversidad de añadidos particulares que incluyen las distintas implementaciones
-- comerciales del lenguaje es amplia, el soporte al estándar SQL-92 es general y muy ampl
-- https://es.wikipedia.org/wiki/SQL

-- DDL (DATA DEFINITION LANGUAGE)
-- Create table
-- Alter table
-- Drop table

-- DML (DATA MANIPULATION LANGUAGE)
-- Select
-- Insert
-- Update
-- Delete

-- DCL (DATA CONTROL LANGUAGE)
-- Programación (No incluida en este curso)


-- -----------------------------------
-- Tipos de datos más comunes en MySQL
-- -----------------------------------

-- Tipo de datos Texto de datos más comunes

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- char(x)		x
-- varchar(x)	x+1

/*
		nombre char(20),
        
        |ANA                 |				20 bytes
		|CARLOS              |				20 bytes
        |MAXIMILIANO         |				20 bytes
        |MARIA TERESA        |				20 bytes
									Total	80 bytes
                                    
		nombre varchar(20)
        |ANA                 |				  3 + 1 = 4  bytes
		|CARLOS              |				  6 + 1 = 7	 bytes
        |MAXIMILIANO         |				 11 + 1 =12  bytes
        |MARIA TERESA        |				 12 + 1 =13  bytes
									Total	36 bytes
*/

-- Tipo de datos Numérico

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- bool (boolean)	1	(0 es false distinto de 0 es true)
-- tinyint			1	2^8			256
-- smallint			2	2^16		65536
-- mediumint		3	2^24		16777216
-- int (integer)	4	2^32		4294967296
-- bigint			8	2^64		18446744073709551616
-- float			4	 		
-- double			8
-- decimal(t,d)		t+2 

/*
		codigo tinyint			(signed)
        
        |--------|--------|
	  -128		 0       127
        
        codigo tinyint unsigned

		|-----------------|
		0				 255
        
        valor float,
        10/3
        3.333333
        --------
        
        100/3
        33.333332
        --------
        
        valor double
        10/3
        3.333333333333339
        ----------------
        
        100/3
        33.3333333333333
        ----------------
        
        
		precio decimal(8,2)
        999999,99
        ------,--
        
        precio decimal(6,3)
        999,999
        ---,---

*/



-- Tipo de datos Fecha y Hora

-- Tipo		Bytes de almacenamiento
-- _______________________________________
-- date		3	Año Mes Dia ‘2012-10-25’	    '2026/08/27'
-- datetime	8
-- time		3
-- year		1

select 'Hola Mundo';
select 2+2;
select 2+2 'Total';								-- Uso del alias
select 2+2 as 'Total';							-- No es requerido el uso del as
select curdate() 'Fecha Actual';				-- Devuelve la fecha actual del server 	(date)
select curtime() 'Hora Actual';					-- Devuelve la hora actual				(time)
select sysdate() 'Fecha y Hora Actual';			-- Devuelve fecha y hora actual			(datetime)
select PI() 'Valor PI';
select PI() Valor_PI;							-- (float)
select round(PI(),2) Valor_PI;


-- Laboratorio 2

-- 1- Borrar si existe la base de datos Negocio.

-- 2- Crear la base de datos Negocio.

-- 3- Ingresar a la base de datos creada.

-- 4- Crear la tabla Clientes dentro de la base de datos con el siguiente detalle:

-- codigo		int auto_increment y PK
-- nombre		varchar(20) not null
-- apellido		varchar(20) not null
-- cuit			char(13)
-- direccion	varchar(50)
-- comentarios 	varchar(140)

-- PK significa Primary Key

-- 5- Crear la tabla Facturas dentro de la base de datos con el siguiente detalle:

-- Letra		char y PK
-- Numero		integer y PK
-- Fecha		date
-- Monto		double

-- observar que se esta declarando una clave primaria compuesta
-- es decir primary key(letra,codigo)
-- cada campo por si solo no es clave, ni tampoco identifica al registro
-- pero la suma de los dos forman la clave


-- 6- Crear la tabla Articulos dentro de la base de datos con el siguiente detalle:

-- Codigo		integer auto_increment y PK 
-- Nombre 		varchar(50)
-- Precio		double
-- Stock		integer

-- 7- Cargar 5 registros aleatorios en cada tabla.

-- 8- Mostrar las tablas que tiene la base de datos negocio.

-- 9- Describir (detalle de campos - METADATO) cada una de las tablas de la base de datos.

-- 10- Listar los registros de cada tabla.












