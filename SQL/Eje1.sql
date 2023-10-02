/* Ejercicio 1
1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria),
nombre (texto) y email (texto). /*

CREATE TABLE IF NOT EXISTS clientes (
 Id SERIAL PRIMARY KEY,
 Nombre VARCHAR (255) NOT NULL,
 email VARCHAR (255)
)