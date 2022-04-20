create database nashe;
use nashe;

create table faltas (
 id_falta int primary key auto_increment,
 id_alumno int ,
 fecha date,
 cantidad int
);

create table alumno(
id_alumno int primary key auto_increment,
dni int,
nombre varchar(50),
direccion varchar(50),
telefono int,
curso int,
fecha_nacimiento date
);

create table notas (
	id_nota int primary key auto_increment,
    id_alumno int,
    id_materia int,
    trim1 int,
    trim2 int,
    trim3 int,
    diciembre int,
    marzo int
);

create table materias(
	id_materia int primary key auto_increment,
    nombre varchar(50),
    cant_horas int,
    curso int,
    aula varchar(50)
);

/* 1  */ DELETE FROM alumno WHERE dni=42845014;
/* 2  */ UPDATE notas SET trim1=10 WHERE id_alumno=25 AND id_materia=8;
/* 3  */ SELECT nombre,cant_horas,aula FROM materias WHERE curso="3C" ORDER BY nombre;
/* 4  */ DELETE FROM alumnos WHERE curso="6C";
/* 5  */ UPDATE alumnos SET curso="5C" WHERE curso="4C";
/* 6  */ SELECT dni,nombre,fecha_nacimiento FROM alumnos WHERE curso="4C"ORDER BY fecha_nacimiento DESC;
/* 7  */ DROP TABLE notas;
/* 8  */ SELECT MAX(trim1) FROM notas WHERE id_materia=2;
/* 9  */ SELECT AVG(diciembre) FROM notas WHERE id_materia=3; 
/* 10 */ INSERT INTO alumnos(id_alumno,dni,nombre,direccion,telefono,curso,fecha_nacimiento)VALUES 
			(12345678,"Martin Leto","Lanus",1500000000,"5C","2022-3-11");
