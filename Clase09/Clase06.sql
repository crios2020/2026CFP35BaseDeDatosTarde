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

-- 2 - Ingrese 5 registros aleatorios en cada tabla.

-- 3 - Basándose en la tabla artículos obtener los siguientes listados.

-- a-	artículos con precio mayor a 100
-- b-	artículos con precio entre 20 y 40 (usar < y >)
-- c-	artículos con precio entre 40 y 60 (usar BETWEEN)
-- d-	artículos con precio = 20 y stock mayor a 30
-- e-	artículos con precio (12,20,30) no usar IN
-- f-	artículos con precio (12,20,30) usar el IN
-- g-	artículos que su precio no sea (12,20,30)
-- h-   artículos que su precio mas iva(21 %) sea mayor a 100
-- i-   listar nombre y descripción de los artículos que no cuesten $100
-- j- 	artículos con nombre que contengan la cadena 'lampara' (usar like)
-- k-   artículos que su precio sea menor que 200 y en su nombre no contenga la letra 'a'

-- 	2- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precio iguales deben quedar ordenados por nombre.
-- 	3- Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener el monto con el iva del producto.
-- 	4- Listar todos los artículos incluyendo una columna denominada 'cantidad de cuotas' y otra 'valor de cuota', la cantidad es fija y es 3, 
--     el valor de cuota corresponde a 1/3 del monto con un 5% de interés.