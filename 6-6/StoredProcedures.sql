-- 1)

DELIMITER $$
	CREATE PROCEDURE productosConPrecioDeCompraMayorAlPromedio()
    BEGIN
		SELECT*FROM productos WHERE precio > AVG(precio);
    END;
DELIMITER ;
CALL productosConPrecioDeCompraMayorAlPromedio();

-- <@>--------------------------------------------------------------------------------------------------------------<@>
-- 2)
DELIMITER $$
	CREATE PROCEDURE borrarItems(orderNumber_ INT)
    BEGIN
		SET maximo = SELECT MAX(orderNumber) FROM orderDetails;
        DECLARE output INT DEFAULT 0;
        IF(orderNumber_ <= maximo) THEN
			DELETE FROM orderDetails WHERE orderNumber = orderNumber_;
        ELSE
			SET output = COUNT(orderNumber) FROM orderDetails WHERE orderNumber = orderNumber_;
            SELECT output;
        END IF;
    END;
DELIMITER ; 
CALL borrarItems(8);

-- <@>--------------------------------------------------------------------------------------------------------------<@>
-- 3)
DELIMITER $$
	CREATE PROCEDURE  borrarLineaDeProductLines()
    BEGIN
        SET successMsg = "La línea de productos fue borrada.";
        SET errorMsg   = "La línea de productos no pudo borrarse porque contiene productos asociados.";

        IF(SELECT productLine FROM productLines IN (SELECT productLine FROM  products)
			SELECT errorMsg;
        ELSE 
			DELETE FROM productLines;
            SELECT successMsg;
        END IF;
        
    END;
DELIMITER ;
CALL borrarLineaDeProductLines();
-- <@>--------------------------------------------------------------------------------------------------------------<@>
-- 4)
DELIMITER $$
	CREATE PROCEDURE cantidadOrdenesPorEstado()
    BEGIN
        SELECT customer.state,orders.COUNT(customerNumber) FROM orders WHERE customerNumber IN (SELECT customerNumber FROM customers)
        INNER JOIN customer ON customer.customerNumber = orders.customerNumber
        GROUP BY state;
    END;
DELIMITER ;
CALL cantidadOrdenesPorEstado();

-- <@>--------------------------------------------------------------------------------------------------------------<@>
-- 5)
DELIMITER $$
		CREATE PROCEDURE cantidadOrdenesPorEstado(dateOrder DATE,dateOrder2 DATE)
    BEGIN
        SELECT customer.state,orders.COUNT(customerNumber) FROM orders WHERE customerNumber IN (SELECT customerNumber FROM customers)
        AND orderDate BETWEEN dateOrder AND dateOrder2
        INNER JOIN customer ON customer.customerNumber = orders.customerNumber
        GROUP BY customer.state;
    END;
DELIMITER ;
CALL cantidadOrdenesPorEstado("2005-07-01","2005-06-01");
-- <@>--------------------------------------------------------------------------------------------------------------<@>
-- 6)
DELIMITER $$
	CREATE PROCEDURE genteSubordinadaXempleado()
    BEGIN 
		SELECT firstname,COUNT(lastName) FROM employees WHERE reportsTo IN (SELECT reportsTo FROM employees) AND COUNT(lastName) > 0;
    END;
DELIMITER ;
CALL genteSubordinadaXempleado();	

DELIMITER $$
	CREATE PROCEDURE numeroOrdenyPrecioTotal()
    BEGIN
		SELECT orderNumber,SUM(priceEach) FROM orderDetails;
    END;
DELIMITER ;
CALL numeroOrdenyPrecioTotal();
-- <@>--------------------------------------------------------------------------------------------------------------<@>
-- 7)
DELIMITER $$
	CREATE PROCEDURE ordenesAsociadasACliente()
    BEGIN
		SELECT customer.customerNumber,customer.customerName,orders.* ,orderDetails.SUM(priceEach)
        FROM customer 
        INNER JOIN orders       ON customer.customerNumber = orders.customerNumber
        INNER JOIN orderDetails ON orderDetails.orderNumber = orders.orderNumber;
        ;
    END;
DELIMITER ;
CALL ordenesAsociadasACliente();





