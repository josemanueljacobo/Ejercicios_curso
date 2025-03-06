

-- 1. Crea una base de datos llamada "MiBaseDeDatos".
CREATE DATABASE MiBaseDeDatos;

-- 2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero).
CREATE TABLE Usuarios (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    edad INT NOT NULL,
    ciudad_id INT REFERENCES Ciudades(id)
);

-- 3. Inserta dos registros en la tabla "Usuarios".
INSERT INTO Usuarios (nombre, edad, ciudad_id) VALUES ('Carlos', 30, 1), ('Ana', 25, 2);

-- 4. Actualiza la edad de un usuario en la tabla "Usuarios".
UPDATE Usuarios SET edad = 35 WHERE nombre = 'Carlos';

-- 5. Elimina un usuario de la tabla "Usuarios".
DELETE FROM Usuarios WHERE nombre = 'Ana';



-- 1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "pais" (texto).
CREATE TABLE Ciudades (
    id SERIAL PRIMARY KEY,
    nombre TEXT NOT NULL,
    pais TEXT NOT NULL
);

-- 2.Inserta al menos tres registros en la tabla "Ciudades".
INSERT INTO Ciudades (nombre, pais) VALUES ('Madrid', 'España'), ('Buenos Aires', 'Argentina'), ('México DF', 'México');

-- 3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".
ALTER TABLE Usuarios ADD CONSTRAINT fk_ciudad FOREIGN KEY (ciudad_id) REFERENCES Ciudades(id);

-- 4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN).
SELECT u.nombre AS usuario, c.nombre AS ciudad, c.pais 
FROM Usuarios u
LEFT JOIN Ciudades c ON u.ciudad_id = c.id;

-- 5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN).
SELECT u.nombre AS usuario, c.nombre AS ciudad, c.pais 
FROM Usuarios u
INNER JOIN Ciudades c ON u.ciudad_id = c.id;