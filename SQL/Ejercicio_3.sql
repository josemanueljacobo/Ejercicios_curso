--1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, claveprimaria), "nombre" (texto) y "precio" (numérico).
CREATE TABLE Productos (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    precio NUMERIC NOT NULL
);
--2. Inserta al menos cinco registros en la tabla "Productos".
INSERT INTO Productos (nombre, precio) VALUES 
('Ordenador', 1200.50),
('Teléfono', 800.00),
('Tablet', 500.75),
('Monitor', 300.40),
('Teclado', 50.99);
--3. Actualiza el precio de un producto en la tabla "Productos".
UPDATE Productos SET precio = 850.00 WHERE nombre = 'Teléfono';
--4. Elimina un producto de la tabla "Productos".
DELETE FROM Productos WHERE nombre = 'Teclado';
--5. Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").
SELECT u.nombre AS usuario, pr.nombre AS producto 
FROM Usuarios u
INNER JOIN Pedidos p ON u.id = p.cliente_id 
INNER JOIN Productos pr ON p.producto = pr.nombre;