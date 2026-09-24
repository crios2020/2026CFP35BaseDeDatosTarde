use negocio;

-- comando DML Insert

show tables;
describe articulos;
describe clientes;
describe facturas;

-- insert normal con definición de campos (Recomendado para programación)
insert into clientes (nombre, apellido, direccion) values ('Juan','Martinez','Algarrobo 1041');
insert into clientes (direccion, apellido, nombre) values ('Viel 123','Perez','Ana');
    
select * from clientes;

-- insert abreviado sin definición de campos  (No recomendado para programación)
insert into clientes values
	(null,'Ana','Perez','122312312','Lima 111','');
    
-- se recomienda en programación usar definición de campos
insert into clientes (nombre,apellido,cuit,direccion,comentarios) values
	('Ana','Perez','122312312','Lima 111','');

-- insert set 	NO ANSI (solo funciona ne MySQL)
insert clientes set nombre='Carmen', apellido='Mendez', direccion='Maipu 345';
select * from clientes;

-- insert masivo (ANSI)
insert into clientes (nombre, apellido, direccion) values 
	('Dario','Lopez','Lavalle 234'),
    ('Cristina','Molina','Peru 640'),
    ('Marta','Leon','Guayaquil 321'),
    ('Mario','Mendez','Viel 233'),
    ('Marina','Segovia','Montes de Oca 122');
    
-- Delete		DML			ANSI
select * from clientes;
delete from clientes where codigo=20;
delete from clientes where nombre='Juan';		-- delete masivo
-- delete from clientes;						-- borra todos los registros de la tabla 

-- desactivar safe updates
set sql_safe_updates=0;			-- =1

-- Update		DML			ANSI
select * from clientes;
update clientes set nombre='Marianela' where codigo=2;
update clientes set nombre='Lorena', apellido='Medina', direccion='Siempre viva 1515' 
	where codigo=4;
update clientes set nombre='Maria' where nombre='Mario';
-- update clientes set nombre='Maria';				-- Todos los clientes se llaman Maria

-- Laboratorio 
-- Usando la base de datos negocio.

-- Basándose en la tabla clientes realizar los siguientes puntos.

-- 1- 	Insertar 5 clientes en la tabla clientes utilizando el insert into sin utilizar 
--      campos como parte de la sentencias, es decir de la forma simplificada.
-- 2-	Insertar 5 clientes en la tabla clientes utilizando los campos como parte de la 
--      sentencias, es decir de la forma extendida. Completar 
--      solo los campos nombre, apellido y CUIT.

-- 3-	Actualizar el nombre del cliente 1 a Jose.
-- 4-	Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.
-- 5-	Actualizar todos los comentarios NULL  a ''.
-- 6-	Eliminar los clientes con apellido Perez.
-- 7-	Eliminar los clientes con CUIT Terminan en 0.

-- Basando se en la tabla artículos, realizar los siguientes puntos.
-- 	8- Aumentar un 20% los precios de los artículos con precio menor igual a 50.
-- 	9- Aumentar un 15% los precios de los artículos con precio mayor a 50.
-- 	10- Bajar un 5% los precios de los artículos con precio mayor a 200.
-- 	11- Eliminar los artículos con stock menor a 0.
-- 	12- Agregar a la tabla articulos, los campos stockMinimo y stockMaximo. (usar alter table add)
--  13- Completar en los registros los valores de los campos stockMinimo y stockMaximo (usar update)
--      teniendo en cuenta que el stock mínimo debe ser menor que el stock máximo.
--  14- Lista los articulos que se deben reponer y que cantidad se debe reponer de cada articulos.
--      Tener en cuenta que se debe reponer cuando el stock es menor al stockMinimo y la cantidad de articulos a 
--      reponer es stockMaximo - stock.
--  15- Calcular el valor de venta de toda la mercaderia que hay en stock.
--  16- Calcular el valor de venta + iva de toda la mercaderia que hay en stock.
      