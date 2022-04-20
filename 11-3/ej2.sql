create database a;
use a;

create table clientes (
id_cliente int primary key auto_increment, 
nombre VARCHAR(50), apellido VARCHAR(50), 
direccion VARCHAR(50), 
telefono INT, 
email VARCHAR(50), 
fecha_alta date
);

create table pedidos(
id_pedido INT PRIMARY KEY AUTO_INCREMENT,
descripcion VARCHAR(100),
id_cliente int,
fecha_compra date,
fecha_entrega date,
descuento float
);create database a;
use a;

create table clientes (
id_cliente int primary key auto_increment, 
nombre VARCHAR(50), apellido VARCHAR(50), 
direccion VARCHAR(50), 
telefono INT, 
email VARCHAR(50), 
fecha_alta date
);

create table pedidos(
id_pedido INT PRIMARY KEY AUTO_INCREMENT,
descripcion VARCHAR(100),
id_cliente int,create database a;
use a;

create table clientes (
id_cliente int primary key auto_increment, 
nombre VARCHAR(50), apellido VARCHAR(50), 
direccion VARCHAR(50), 
telefono INT, 
email VARCHAR(50), 
fecha_alta date
);

create table pedidos(
id_pedido INT PRIMARY KEY AUTO_INCREMENT,
descripcion VARCHAR(100),
id_cliente int,
fecha_compra date,
fecha_entrega date,
descuento float
);

create table productos(
	codigo INT,
    producto VARCHAR(30),
    decripcion VARCHAR(225),
    precio_compra FLOAT
);

create table detallepedido (
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    codigo_producto INT,
    cantidad INT,
    precio_venta FLOAT
);

/* 1  */ SELECT id_pedido,id_cliente,fecha_compra,descuento FROM pedidos WHERE fecha_compra BETWEEN "2017-7-1" AND "2017-7-31" ORDER BY id_cliente AND fecha_compra;
/* 2  */ SELECT COUNT(productos) FROM productos;
/* 3  */ SELECT COUNT(descuentos) FROM pedidos WHERE descuento>10;
/* 4  */ SELECT COUNT(cantidad),cantidad,id_producto FROM pedidos;
/* 5  */ UPDATE clientes SET email="juan@gmail.com" AND telefono=45224556 WHERE id_cliente=1;
/* 6  */ SELECT*FROM detallepedido WHERE cantidad>3;
/* 7  SELECT id_pedido,descripcion,id_cliente FROM pedidos WHERE descuento IN (5,10,15);	*/
/* 8  */ DELETE FROM clientes WHERE fecha_alta  = "1999-23-01";
/* 9  */ INSERT INTO clientes (id_cliente,nombre,direccion,telefono,email,fecha_alta)VALUES
		("Pablo Califano","Gerli",1500001111,"nemen@gmail.com","2022-3-11");
/* 10 */ SELECT SUM(precio_compra) FROM detallepedido WHERE id_pedido=1;

fecha_compra date,
fecha_entrega date,
descuento float
);

create table productos(
	codigo INT,
    producto VARCHAR(30),
    decripcion VARCHAR(225),
    precio_compra FLOAT
);

create table detallepedido (
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    codigo_producto INT,
    cantidad INT,
    precio_venta FLOAT
);

/* 1  */ SELECT id_pedido,id_cliente,fecha_compra,descuento FROM pedidos WHERE fecha_compra BETWEEN "2017-7-1" AND "2017-7-31" ORDER BY id_cliente AND fecha_compra;
/* 2  */ SELECT COUNT(productos) FROM productos;
/* 3  */ SELECT COUNT(descuentos) FROM pedidos WHERE descuento>10;
/* 4  */ SELECT COUNT(cantidad),cantidad,id_producto FROM pedidos;
/* 5  */ UPDATE clientes SET email="juan@gmail.com" AND telefono=45224556 WHERE id_cliente=1;
/* 6  */ SELECT*FROM detallepedido WHERE cantidad>3;
/* 7  SELECT id_pedido,descripcion,id_cliente FROM pedidos WHERE descuento IN (5,10,15);	*/
/* 8  */ DELETE FROM clientes WHERE fecha_alta  = "1999-23-01";
/* 9  */ INSERT INTO clientes (id_cliente,nombre,direccion,telefono,email,fecha_alta)VALUES
		("Pablo Califano","Gerli",1500001111,"nemen@gmail.com","2022-3-11");
/* 10 */ SELECT SUM(precio_compra) FROM detallepedido WHERE id_pedido=1;


create table productos(
	codigo INT,
    producto VARCHAR(30),
    decripcion VARCHAR(225),
    precio_compra FLOAT
);

create table detallepedido (
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    codigo_producto INT,
    cantidad INT,
    precio_venta FLOAT
);

/* 1  */ SELECT id_pedido,id_cliente,fecha_compra,descuento FROM pedidos WHERE fecha_compra BETWEEN "2017-7-1" AND "2017-7-31" ORDER BY id_cliente AND fecha_compra;
/* 2  */ SELECT COUNT(productos) FROM productos;
/* 3  */ SELECT COUNT(descuentos) FROM pedidos WHERE descuento>10;
/* 4  */ SELECT COUNT(cantidad),cantidad,id_producto FROM pedidos;
/* 5  */ UPDATE clientes SET email="juan@gmail.com" AND telefono=45224556 WHERE id_cliente=1;
/* 6  */ SELECT*FROM detallepedido WHERE cantidad>3;
/* 7  SELECT id_pedido,descripcion,id_cliente FROM pedidos WHERE descuento IN (5,10,15);	*/
/* 8  */ DELETE FROM clientes WHERE fecha_alta  = "1999-23-01";
/* 9  */ INSERT INTO clientes (id_cliente,nombre,direccion,telefono,email,fecha_alta)VALUES
		("Pablo Califano","Gerli",1500001111,"nemen@gmail.com","2022-3-11");
/* 10 */ SELECT SUM(precio_compra) FROM detallepedido WHERE id_pedido=1;
