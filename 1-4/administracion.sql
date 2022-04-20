CREATE DATABASE administracion;
USE administracion;

CREATE TABLE clientes (
	id_cliente  INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    id_compra INT,
    antiguedad INT
);

CREATE TABLE productos(
	id  INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(50),
    fecha_compra DATE,
    fecha_entrega DATE, 
    codigo_producto INT,
    id_cliente INT,
    id_pedido INT,
    descuentos INT,
    precio FLOAT
);
CREATE TABLE pedidos(
	id_pedido INT AUTO_INCREMENT PRIMARY KEY,	
	codigo_producto INT,
    cantidad INT,
    detalles VARCHAR(50)
);

/* 1  */ SELECT * FROM productos WHERE id_cliente=1;
/* 2  */ SELECT * FROM productos,clientes;
/* 3  */ SELECT cliente.id,cliente.nombre,cliente.apellido,
				pedido.id,pedido.descripcion,pedidos.detalles,
				productos.codigo_producto,productos				FROM ((
		 productos                                              INNER JOIN
		 clientes ON productos.id_cliente = clientes.id_compra) INNER JOIN 
		 pedido   ON productos.codigo_producto  = pedidos.codigo_producto);
/*4&5 */ SELECT * FROM clientes WHERE id_compra NOT IN (
SELECT id_cliente FROM productos WHERE id_pedido NOT IN(
SELECT id_pedido FROM pedidos
));
/* 6  */ SELECT detalles FROM pedidos WHERE id_pedido IN 
(SELECT id_pedido FROM productos WHERE descuentos = 5);
/* 7   */ SELECT * FROM descuentos WHERE descuentos = (SELECT MAX(descuentos) FROM productos);
/* 8   */ SELECT * FROM descuentos WHERE descuentos = (SELECT MIN(descuentos) FROM productos);
/* 9   */ SELECT * FROM clientes WHERE id_compra IN (
SELECT id_cliente FROM productos WHERE id_pedido IN(
SELECT id_pedido FROM pedidos));
/* 10  */ SELECT SUM(cantidad),id_pedido FROM pedidos;
/* 11  */ 
/* 12  */ SELECT DATEDIFF(fecha_compra,fecha_entrega) FROM productos;
/* 13  */ SELECT*FROM clientes WHERE antiguedad>10;
/* 14  */ SELECT*,SUM(productos.precio) FROM pedidos INNER JOIN productos ON pedidos.id_pedido = productos.id_pedido;
/* 15  */ SELECT precio FROM productos WHERE precio>3500;
/* 16  */ SELECT COUNT(codigo_producto) FROM productos WHERE codigo_producto IN(SELECT codigo_producto FROM pedidos);
/* 17  */ SELECT codigo_producto FROM productos ORDER BY codigo_producto desc limit 5;
/* 18a */ SELECT MAX(cantidad),MIN(cantidad),AVG(cantidad) FROM pedidos;
/* 18b */ SELECT MAX(COUNT(nombre)),MIN(COUNT(nombre)),AVG(nombre) FROM pedidos;
/* 19  */ SELECT nombre FROM clientes WHERE id_compra = (SELECT id_compra FROM productos WHERE precio>3000);













