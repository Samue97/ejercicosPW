/* Ejercicio 1
1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria),
nombre (texto) y email (texto). /*

CREATE TABLE IF NOT EXISTS clientes (
 Id SERIAL PRIMARY KEY,
 Nombre VARCHAR (255) NOT NULL,
 EMail VARCHAR (255)
)

/*2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y
email="juan@example.com"/*

INSERT INTO public.clientes (nombre, email)
VALUES ('Juan', 'juan@example.com')
/*3. Actualizar el email del cliente con id=1 a "juan@gmail.com"/*
UPDATE public.clientes 
SET email = 'juan@gmail.com'
WHERE id = 1;
/* 4. Eliminar el cliente con id=1 de la tabla "Clientes"/*
DELETE FROM public.clientes
WHERE id = 1;

/*5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria),
cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto
(texto) y cantidad (entero)/*
CREATE TABLE IF NOT EXISTS Pedidos2 (
  id SERIAL PRIMARY KEY,
  producto VARCHAR (255) NOT NULL,
  cantidad INT,
  cliente_id INT NOT NULL,
  CONSTRAINT FK_cliente_id FOREIGN KEY (cliente_id) REFERENCES clientes (id)
)

/*6. Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1,
producto="Camiseta" y cantidad=2./*
INSERT INTO public.pedidos2 (producto, cantidad, cliente_id)
VALUES ('camiseta', 1, 4)

/*7. Actualizar la cantidad del pedido con id=1 a 3./*
UPDATE public.pedidos2
SET cantidad = 3
WHERE ID = 2

/*8. Eliminar el pedido con id=1 de la tabla "Pedidos"/*
DELETE FROM public.pedidos2 
WHERE ID = 2

/*9. Crear una tabla llamada "Productos" con las columnas: id (entero, clave
primaria), nombre (texto) y precio (decimal)./*
CREATE TABLE IF NOT EXISTS Productos (
 id SERIAL PRIMARY KEY,
 Nombre VARCHAR(255),
 Precio NUMERIC 
 )

/*10. Insertar varios productos en la tabla "Productos" con diferentes valores./*
INSERT INTO public.productos (nombre)
VALUES ('Sudadera')

INSERT INTO public.productos (nombre)
VALUES ('Gorra')

INSERT INTO public.productos (nombre)
VALUES ('Calcetín')

/*11. Consultar todos los clientes de la tabla "Clientes"/*
SELECT * FROM public.clientes

/*12. Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los
clientes correspondientes./*
SELECT * FROM public.pedidos2

/*13. Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50./*
UPDATE public.productos
SELECT * FROM public.productos 
WHERE precio >50

/*14. Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o
igual a 5./*
SELECT * FROM public.pedidos2
WHERE cantidad >= 5

/*15. Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra
"A"./*
SELECT * FROM public.clientes
WHERE nombre ILIKE 'a%'

/*16. Realizar una consulta que muestre el nombre del cliente y el total de pedidos
realizados por cada cliente./*
SELECT * FROM public.pedidos2, 
public.clientes

/*17. Realizar una consulta que muestre el nombre del producto y la cantidad total de
pedidos de ese producto./*

/*SELECT * FROM public.productos/*
WHERE nombre = 'Sudadera'

/*18. Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha./*

ALTER TABLE public.pedidos2
ADD COLUMN fecha DATE

/*19. Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla
"Productos" en la columna "producto"./*
ALTER TABLE public.pedidos2
ADD CONSTRAINT FK_producto_id FOREIGN KEY (id) REFERENCES productos (id)

20. Realizar una consulta que muestre los nombres de los clientes, los nombres de
los productos y las cantidades de los pedidos donde coincida la clave externa.
SELECT * FROM public.pedidos2
LEFT JOIN public.productos
ON public.pedidos2.id = public.productos.id




