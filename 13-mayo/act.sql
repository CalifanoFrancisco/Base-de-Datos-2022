
-- ----------------------------------------------------------------------------------------------------------------------------
/* 1 */ CREATE DATABASE miEmpresa;
/* 2 */ USE miEmpresa;

/* 3 */
CREATE TABLE empleados(
	codigo_empleado INT AUTO_INCREMENT PRIMARY KEY,
	dni INT,
    apellido VARCHAR(50),
    nombre VARCHAR(50),
    domicilio VARCHAR(50),
    sector VARCHAR(50),
    nro_interno INT,
    celular INT,
    estado_civil VARCHAR(50),
    hijos INT,
    fecha_nacimiento DATE,
    fecha_ingreso DATE
);
CREATE TABLE sueldo (
	basico FLOAT,
    retenciones FLOAT,
    asignaciones FLOAT,
    comisiones FLOAT,
    mes INT,
    sueldo_neto FLOAT
);
CREATE TABLE productos (
	codigo_producto INT NOT NULL,
	descripcion VARCHAR(50),
    stock INT,
    stock_minimo INT,
    precio_costo FLOAT,
    precio_venta FLOAT,
    demora_entrega DATE
);
CREATE TABLE control_horas(
	fecha DATE,
    hora_inicio INT,
    hora_fin INT
);
CREATE TABLE productos_vendidos_por_vendedores(
	codigo_vendedor INT,
    codigo_producto INT
);

/* 4 */ -- no :)
/* 5 */ SELECT*FROM empleados WHERE YEAR(fecha_ingreso) = 1995;
/* 6 */ SELECT*FROM empleados WHERE MONTH(fecha_nacimiento) = 10;
/* 7 */ SELECT*FROM empleados WHERE MONTH(fecha_nacimiento) = 1 AND DAY(fecha_nacimiento) BETWEEN 1 AND 15;
/* 8 */ SELECT*FROM empleados GROUP BY fecha_ingreso;
	    SELECT*FROM empleados ORDER BY fecha_ingreso;
/* 9 */ SELECT demora_entrega FROM productos WHERE stock_minimo = stock;
/* 10*/ SELECT*FROM empleados ORDER BY COUNT(codigo_vendedor IN(SELECT codigo_vendedor FROM productos_vendidos_por_vendedores)) LIMIT 10;
/* 11*/ SELECT nombre,apellido, COUNT(codigo_vendedor IN(SELECT codigo_vendedor FROM productos_vendidos_por_vendedores))   FROM empleados WHERE YEAR(demora_entrega)=2017;
/* 12*/ SELECT prouctos.descripcion,empleados.COUNT(codigo_vendedor IN(SELECT codigo_vendedor FROM productos_vendidos_por_vendedores)) FROM productos 
INNER JOIN empleados                         ON empleados.codigo_empleado                          = productos_vendidos_por_vendedores.codigo_empleado
INNER JOIN productos_vendidos_por_vendedores ON productos_vendidos_por_vendedores.codigo_productos = productos.codigo_producto;
/* 13*/ SELECT STR_TO_DATE('12/31/2011', '%m/%d/%Y');
/* 14*/ SELECT apellido,nombre FROM empleados;	
/* 15*/ UPDATE productos SET descripcion = "Nueva descripcion" WHERE descripcion = "%televisor%";
/* 16*/ SELECT quitarEspacios("RAAA aguante el faraon");
DELIMITER $$
	CREATE PROCEDURE quitarEspacios(palabra VARCHAR(50));
    BEGIN
		SELECT TRIM(palabra);
    END;
DELIMITER ;
/* 17*/
DELIMITER $$
	CREATE PROCEDURE listadoDeHijos()
    BEGIN
		IF(hijos == 0)THEN
			SELECT "No tiene hijos";
		ELSE
			SELECT apellido,nombre,hijos;
        END IF;
    END;
DELIMITER ;
/* 18*/
/* 19*/
/* 20*/ 
