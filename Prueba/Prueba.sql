/* 1 */ SELECT *                       FROM mascotas GROUP BY edad;
/* 2 */ SELECT *                       FROM mascotas GROUP BY peso;
/* 3 */ SELECT COUNT(nombres)/*,edad*/ FROM mascotas GROUP BY edad;
/* 4 */ SELECT COUNT(nombres)/*,peso*/ FROM mascotas GROUP BY peso;
/* 5 */ SELECT SUM(peso)               FROM mascotas WHERE    edad IN (5,10);
/* 6 */ SELECT AVG(peso)               FROM mascotas;
/* 7 */ 
DELIMITER &&
	CREATE PROCEDURE cantidadDeMascotas(IN id_amo INT)
    BEGIN
		SELECT COUNT(nombres) FROM mascotas WHERE id_mascota IN
	    (SELECT id_mascota FROM dueños WHERE id_dueño=id_amo);
    END;
DELIMITER ;
/* 8 */
DELIMITER $$
	CREATE PROCEDURE pesaMasDe15Kg(IN id_mascota_ INT)
		DECLARE output BOOLEAN DEFAULT FALSE;
		IF(SELECT peso FROM mascotas WHERE id_mascota = id_mascota_ > 15)
			SET output = TRUE;
		ELSE
			SET output = FALSE;
		END IF;
		SELECT output;
	END;
DELIMITER ;

/* 9 */ 
DELIMITER $$
	CREATE PROCEDURE imprimirDatosVeterinario(IN id_veterinario_ INT)
    BEGIN
		SELECT*FROM veterinarios WHERE id_veterinario = id_ veterinario_;
    END;
DELIMITER ;

/* 10 */
DELIMITER $$
	CREATE PROCEDURE mascotaPesaMasOIgual(IN peso_ INT)
    BEGIN 
		SELECT*FROM mascotas WHERE peso>=peso_;
    END;
DELIMITER ;
CALL mascotaPesaMasOIgual(6);








