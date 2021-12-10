-- DROP DATABASE tienda;

-- CREATE DATABASE tienda;

-- \q
-- psql "username" tienda < unidad2.sql
-- psql -U "username"

\c tienda;

BEGIN TRANSACTION;

UPDATE producto 
SET stock = stock - 5
WHERE id = 9;

INSERT INTO compra(id, cliente_id, fecha)
VALUES (33, 1, '2021-12-09');

INSERT INTO detalle_compra(id, producto_id, compra_id, cantidad) 
VALUES (42, 9, 33, 5);

COMMIT;

SELECT * FROM producto;

BEGIN TRANSACTION;

UPDATE producto 
SET stock = stock - 3
WHERE id = 1;

INSERT INTO compra(id, cliente_id, fecha)
VALUES (34, 2, '2021-12-10');

INSERT INTO detalle_compra(id, producto_id, compra_id, cantidad) 
VALUES (43, 1, 34, 3);

UPDATE producto 
SET stock = stock - 3
WHERE id = 2;

INSERT INTO compra(id, cliente_id, fecha)
VALUES (35, 2, '2021-12-10');

INSERT INTO detalle_compra(id, producto_id, compra_id, cantidad) 
VALUES (44, 2, 35, 3);

UPDATE producto 
SET stock = stock - 3
WHERE id = 3;

INSERT INTO compra(id, cliente_id, fecha)
VALUES (36, 2, '2021-12-10');

INSERT INTO detalle_compra(id, producto_id, compra_id, cantidad) 
VALUES (45, 3, 36, 3);

COMMIT;