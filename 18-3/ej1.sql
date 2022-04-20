
/* 2  */ INSERT INTO escritor (nombre,apellido,direccion) VALUES ("Este","Sech","La rioja");
/* 3  */ UPDATE poema SET titulo="Mis mejores poemas",descripcion="una seleccion de los mejores poemas del autor" WHERE id_poema=1;
/* 4  */ DELETE                                                      FROM libros                                  WHERE id_libro=10;
/* 5  */ SELECT                                          MAX(precio) FROM libros;
/* 6  */ SELECT                              MIN(precio),AVG(precio) FROM libros;
/* 7  */ SELECT                          *                           FROM libros                                  WHERE id_libro IN (
         SELECT                                             id_libro FROM poema_libro                             WHERE id_poema>=10);
/* 8  */ SELECT                               libros.nombre,id_poema FROM poema_libro   INNER JOIN libros      ON poema_libro.id_libro = libros.id_libro;
/* 9  */ SELECT escritor.nombre,escritor.apellido,titulo,descripcion FROM poemas        INNER JOIN escritor    ON poema.id_escritor = escritor.id_escritor;
/* 10 */ SELECT                      libro.titulo,titulo,descripcion FROM poema         INNER JOIN libro       ON libro.id_libro = poema_libro.id_libro 
                                                                                        INNER JOIN poema_libro ON poema_libro.id_poema = poema.id_poema;
