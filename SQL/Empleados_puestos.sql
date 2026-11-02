CREATE TABLE empleados(
idempleado INTEGER PRIMARY KEY,
nombre VARCHAR(45),
puestoid INTEGER
);

CREATE TABLE puestos(
puestoid INTEGER PRIMARY KEY,
nombrepuesto VARCHAR(45)
);

INSERT INTO empleados VALUES(1000,'Juan',1);
INSERT INTO empleados VALUES(1001,'Jose',1);
INSERT INTO empleados VALUES(1002,'Daniel',4);
INSERT INTO empleados VALUES(1003,'Laura',2);
INSERT INTO empleados VALUES(1004,'Carlos',1);
INSERT INTO empleados VALUES(1005,'Daniel',1);
INSERT INTO empleados VALUES(1006,'Luna',3);
INSERT INTO empleados VALUES(1007,'Oscar',5);
INSERT INTO empleados VALUES(1008,'Joao',6);
INSERT INTO empleados VALUES(1009,'Gabriel',7);
INSERT INTO empleados VALUES(1010,'Pedro',7);
INSERT INTO empleados VALUES(1011,'Jesus',2);
INSERT INTO empleados VALUES(1012,'Linda',6);
INSERT INTO empleados VALUES(1013,'Ana',7);
INSERT INTO empleados VALUES(1014,'Maria',7);
INSERT INTO empleados VALUES(1015,'Jose Carlos',2);
INSERT INTO empleados VALUES(1016,'Sandra',15);
INSERT INTO empleados VALUES(1017,'Sandrita',15);


INSERT INTO puestos VALUES(1,'Limpieza');
INSERT INTO puestos VALUES(2,'Secretaria');
INSERT INTO puestos VALUES(3,'Cajera');
INSERT INTO puestos VALUES(4,'Facturista');
INSERT INTO puestos VALUES(5,'Capturista');
INSERT INTO puestos VALUES(6,'Contador');
INSERT INTO puestos VALUES(7,'RH');
INSERT INTO puestos VALUES(8,'Gerente');
INSERT INTO puestos VALUES(9,'Subgerente');
INSERT INTO puestos VALUES(10,'Jardinero');
INSERT INTO puestos VALUES(11,'Office boy');
INSERT INTO puestos VALUES(12,'Cocinero personal');

DROP table empleados

SELECT * FROM empleados  
SELECT * FROM puestos

SELECT * FROM puestos
LEFT JOIN empleados
ON puestos.puestoid=empleados.puestoid
ORDER BY empleados.puestoid

SELECT * FROM empleados
JOIN puestos
ON empleados.puestoid= puestos.puestoid


UPDATE empleados SET nombre='Lupe' WHERE nombre='Sandrita' AND puestoid= 15;


SELECT * FROM  puestos
RIGHT JOIN empleados
ON empleados.puestoid=puestos.puestoid
ORDER BY empleados.puestoid ASC


SELECT empleados.idempleado, puestos.puestoid, puestos.nombrepuesto
FROM empleados 
RIGHT JOIN puestos
ON empleados.puestoid=puestos.puestoid
ORDER BY puestos.puestoid
