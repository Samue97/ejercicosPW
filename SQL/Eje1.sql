/* Ejercicio 1
1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria),
nombre (texto) y email (texto). /*

CREATE TABLE IF NOT EXISTS clientes (
 Id SERIAL PRIMARY KEY,
 Nombre VARCHAR (255) NOT NULL,
 EMail VARCHAR (255)
)

2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y
email="juan@example.com"

INSERT INTO public.clientes (nombre, email)
VALUES ('Juan', 'juan@example.com')