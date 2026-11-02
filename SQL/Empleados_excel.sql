CREATE TABLE employees(
idempleado INTEGER PRIMARY KEY,
nombre VARCHAR(45),
apellidopaterno VARCHAR(45),
apellidomaterno VARCHAR(45),
edad INTEGER,
telefono BIGINT,
sueldo DECIMAL(7,2),
puesto VARCHAR(45)
);

COPY employees FROM 'C:/registros/employees.csv'
HEADER CSV DELIMITER ',';

SELECT * FROM employees