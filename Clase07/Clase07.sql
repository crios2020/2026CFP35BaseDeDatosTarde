
-- Laboratorio 2

-- 1- Borrar si existe la base de datos Negocio.
drop database if exists negocio;
-- 2- Crear la base de datos Negocio.
create database negocio;
-- 3- Ingresar a la base de datos creada.
use negocio;
-- 4- Crear la tabla Clientes dentro de la base de datos con el siguiente detalle:

-- codigo		int auto_increment y PK
-- nombre		varchar(20) not null
-- apellido		varchar(20) not null
-- cuit			char(13)
-- direccion	varchar(50)
-- comentarios 	varchar(140)
-- PK significa Primary Key
create table clientes(
	codigo int auto_increment primary key,
    nombre varchar(20) not null,
    apellido varchar(20) not null,
    cuit char(13),
    direccion varchar(50),
    comentarios varchar(140)
);
-- 5- Crear la tabla Facturas dentro de la base de datos con el siguiente detalle:

-- Letra		char y PK
-- Numero		integer y PK
-- Fecha		date
-- Monto		double
-- observar que se esta declarando una clave primaria compuesta
-- es decir primary key(letra,codigo)
-- cada campo por si solo no es clave, ni tampoco identifica al registro
-- pero la suma de los dos forman la clave
create table facturas(
	letra char(1),
    numero int,
    fecha date,
    monto double
);

-- 6- Crear la tabla Articulos dentro de la base de datos con el siguiente detalle:

-- Codigo		integer auto_increment y PK 
-- Nombre 		varchar(50)
-- Precio		double
-- Stock		integer
create table articulos(
	codigo int auto_increment primary key,
    nombre varchar(50),
    precio double,
    stock int
);

-- 7- Cargar 5 registros aleatorios en cada tabla.
INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios) VALUES
('Juan', 'Pereyra', '20-28456789-3', 'Av. Rivadavia 1250, Ituzaingo', 'Cliente frecuente, prefiere recibir avisos por email.'),
('Mariana', 'Gomez', '27-35678912-6', 'Belgrano 845, Moron', 'Solicito informacion sobre nuevos productos.'),
('Carlos', 'Fernandez', '20-31245678-9', 'Av. Santa Rosa 2345, Castelar', 'Realiza compras mensuales.'),
('Laura', 'Martinez', '27-40123567-2', 'Las Heras 678, Haedo', 'Cliente nuevo, consultar preferencias de contacto.'),
('Diego', 'Rodriguez', '20-29876543-7', 'Sarmiento 1520, Ramos Mejia', 'Solicita factura electronica para sus compras.');
INSERT INTO facturas (letra, numero, fecha, monto) VALUES
('A', 1001, '2026-08-15', 125000.50),
('B', 2035, '2026-08-18', 78500.00),
('C', 3152, '2026-08-20', 45250.75),
('A', 1002, '2026-08-25', 234800.00),
('B', 2036, '2026-08-28', 96300.25);
INSERT INTO articulos (nombre, precio, stock) VALUES
('Teclado inalambrico', 18500.00, 25),
('Mouse optico USB', 9200.50, 40),
('Monitor LED 24 pulgadas', 185000.00, 12),
('Memoria USB 64 GB', 12500.75, 35),
('Auriculares Bluetooth', 28700.00, 18);
-- 8- Mostrar las tablas que tiene la base de datos negocio.
show tables;
-- 9- Describir (detalle de campos - METADATO) cada una de las tablas de la base de datos.
describe clientes;
describe facturas;
describe articulos;
-- 10- Listar los registros de cada tabla.
select * from clientes;
select * from articulos;
select * from facturas;

-- desafio: agregar 10 registros aleatorios en cada tabla
select precio,stock from articulos;
