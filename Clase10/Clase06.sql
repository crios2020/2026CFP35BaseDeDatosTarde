show databases;
use negocio;

-- Comando DML Select

-- comodín *		(todos los campos)
select * from clientes;
select nombre, apellido from clientes;
select apellido, nombre, apellido, curdate() fecha_actual from clientes;

-- columnas calculadas
select letra, numero, fecha, monto, monto*0.21 valor_iva from facturas;
select letra, numero, fecha, monto, round(monto*0.21, 2) valor_iva 
	from facturas;
    
-- filtrado con where
-- Operadores = < <= => > != <>
select * from clientes where codigo=10;
select * from clientes where codigo<=10;
select * from clientes where codigo<10;
select * from clientes where codigo>=10;
select * from clientes where codigo>10;

select * from clientes where nombre='Laura';
select * from clientes where nombre!='Laura';
select * from clientes where nombre<>'Laura';
select * from clientes where nombre<='C';
select * from clientes where nombre<='Cristian';
select * from clientes where nombre>'C';

insert into clientes (nombre, apellido, direccion) values 
	('Laura','Gomez','Lima 333');
-- Operador and or
select * from clientes where nombre='Laura' or apellido='Gomez';
select * from clientes where nombre='Laura' and apellido='Gomez';

select * from clientes where codigo=10;		-- 1 o ningún registro
select * from clientes where nombre='Juan';
select * from clientes where nombre='Laura';

select * from facturas where monto>=50000 and monto<=100000;

-- Clausula between not between
select * from facturas where monto between 50000 and 100000;
select * from facturas where monto not between 50000 and 100000;

select * from clientes 
	where codigo=6
    or codigo=11
    or codigo=17
    or codigo=42
    or codigo=66;
-- Clausula in not in
select * from clientes where codigo in (6, 11, 17, 42, 66);

select * from facturas where fecha='2026/09/03';
select * from facturas where fecha=curdate();

use negocio;
insert into clientes (nombre,apellido) values 
	('Marta','Perez'),('Mirta','Perez'),
    ('Marianela','Perez'),('Mariano','Perez'),
    ('Omar','Perez'),('Melina','Perez'),
    ('Magali','Perez'),('Monica','Perez'),
    ('Mercedes','Perez'),('Marcia','Perez');
    
-- Clausula like not like
select * from clientes where nombre like 'm%';
select * from clientes where nombre like 'ma%';
select * from clientes where nombre like 'mar%';
select * from clientes where nombre like '%a';
select * from clientes where nombre like 'm%a';
select * from clientes where nombre like '%ar%';
select * from clientes where nombre like 'm_r%';
select * from clientes where nombre like '___';		-- 3
select * from clientes where nombre like '____';	-- 4
select * from clientes where nombre like '_____%';  -- 5

-- Clausula Order By
select * from clientes order by nombre;
select * from clientes order by nombre desc;
select * from clientes order by apellido, nombre;



-- Laboratorio 2

-- 1 - Ingrese a la base de datos negocio.
use negocio;
-- 2 - Ingrese 5 registros aleatorios en cada tabla.
INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios)
VALUES
('Martina', 'Gómez', '27-38456789-3', 'Av. Montes de Oca 1250', 'Cliente frecuente'),
('Lucas', 'Fernández', '20-32145678-6', 'Suárez 845', 'Solicita atención por la tarde'),
('Carolina', 'Pérez', '27-29876543-1', 'Av. Caseros 2345', 'Prefiere contacto por teléfono'),
('Diego', 'Rodríguez', '20-35678912-4', 'Brandsen 670', 'Cliente nuevo'),
('Sofía', 'Martínez', '27-41234567-8', 'Herrera 1523', 'Interesada en promociones');

INSERT INTO facturas (letra, numero, fecha, monto)
VALUES
('A', 1001, '2026-09-01', 125000.50),
('B', 2045, '2026-09-03', 87500.00),
('A', 1002, '2026-09-05', 234750.75),
('C', 3010, '2026-09-08', 45990.00),
('B', 2046, '2026-09-10', 156300.25);

INSERT INTO articulos (nombre, precio, stock)
VALUES
('Teclado inalámbrico', 28500.00, 35),
('Mouse óptico USB', 12500.50, 60),
('Monitor LED 24 pulgadas', 185000.00, 12),
('Auriculares Bluetooth', 42000.75, 28),
('Memoria USB 64GB', 18500.00, 45);


-- 3 - Basándose en la tabla artículos obtener los siguientes listados.

-- a-	artículos con precio mayor a 100
select * from articulos where precio>=100;
-- b-	artículos con precio entre 20 y 40 (usar < y >)
select * from articulos where precio>=20 and precio<=40;
-- c-	artículos con precio entre 40 y 60 (usar BETWEEN)
select * from articulos where precio between 40 and 60;
-- d-	artículos con precio = 20 y stock mayor a 30
select * from articulos where precio=20 and stock>30;
-- e-	artículos con precio (12,20,30) no usar IN
select * from articulos where precio=12 or precio=20 or precio=30;
-- f-	artículos con precio (12,20,30) usar el IN
select * from articulos where precio in (12,20,30);
-- g-	artículos que su precio no sea (12,20,30)
select * from articulos where precio not in (12,20,30);
-- h-   artículos que su precio mas iva(21 %) sea mayor a 100
select * from articulos where precio*1.21>100;
-- i-   listar nombre y descripción de los artículos que no cuesten $100
select nombre from articulos where precio <> 100;
-- j- 	artículos con nombre que contengan la cadena 'lampara' (usar like)
select * from articulos where nombre like '%lampara%';
-- k-   artículos que su precio sea menor que 200 y en su nombre no contenga la letra 'a'
select * from articulos where precio<200 and nombre not like '%a%'; 

-- 	2- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precio iguales 
--     deben quedar ordenados por nombre.
select * from articulos order by precio desc, nombre;
-- 	3- Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener 
--     el monto con el iva del producto.
select *, precio*1.21 precio_con_iva from articulos;
select codigo,nombre,precio, precio*1.21 precio_con_iva, stock from articulos;
select 
		codigo,
		nombre,
		round(precio,2) precio, 
		round(precio*1.21,2) precio_con_iva, 
		stock 
    from articulos;
select 
		codigo,
		nombre,
		replace(round(precio,2),'.',',') precio, 
		replace(round(precio*1.21,2),'.',',') precio_con_iva, 
		stock 
    from articulos;
-- 	4- Listar todos los artículos incluyendo una columna denominada 'cantidad de cuotas' 
--     y otra 'valor de cuota', la cantidad es fija y es 3, 
--     el valor de cuota corresponde a 1/3 del monto con un 5% de interés.
select 
		codigo,
		nombre,
		replace(round(precio,2),'.',',') precio, 
		replace(round(precio*1.21,2),'.',',') precio_con_iva, 
        3 cantidad_de_cuotas,
        replace(round(precio*1.21/3*1.05,2),'.',',') valor_de_cuota,
		stock 
    from articulos;
    

