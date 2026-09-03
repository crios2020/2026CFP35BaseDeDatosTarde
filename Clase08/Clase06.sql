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

-- TODO like not like
-- TODO Order By