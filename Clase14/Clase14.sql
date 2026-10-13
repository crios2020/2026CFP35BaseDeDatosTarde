use negocio;

-- funciones de agrupamiento

-- función max(arg) 		arg: número, texto, fecha
select max(monto) from facturas;
select max(monto) monto_máximo from facturas;
select max(fecha) ultima_factura from facturas;
select max(nombre) ultimo_nombre from clientes;

-- función min(arg) 		arg: número, texto, fecha
select min(monto) monto_minimo from facturas;
select min(fecha) primer_fecha from facturas;
select min(nombre) primer_nombre from clientes;

-- función sum(arg)			arg: número
select sum(monto) tota_facturado from facturas;
-- select sum(monto) tota_facturado from facturas order by fecha;
select sum(monto) tota_facturado from facturas where letra='A';
select sum(monto) tota_facturado from facturas where fecha=curdate();

-- función count()
select count(*) cantidad from facturas;				-- 142
select count(*) cantidad from clientes;				-- 132
select count(direccion) cantidad from clientes;		-- 122

-- función avg(arg)			arg: número
select avg(monto) monto_promedio from facturas;
select replace(round(avg(monto),2),'.',',') monto_promedio from facturas;

-- agrupamiento con group by
select letra, sum(monto) total from facturas where letra='A';
select letra, sum(monto) total from facturas where letra='B';
select letra, sum(monto) total from facturas where letra='C';

/*
		letra		total
        A 			10207377
        B			4749976
        C			282687
*/
select letra, sum(monto) total from facturas group by letra;



