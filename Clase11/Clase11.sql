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
    
    
