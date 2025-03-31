CREATE TABLE store.store(
id SERIAL,
id_item INTEGER,
date_store DATE DEFAULT CURRENT_TIMESTAMP,
amout INTEGER,
final_amount TEXT,
id_user INTEGER,
CONSTRAINT pk_store PRIMARY KEY(id),
CONSTRAINT fk_store_item FOREIGN KEY(id_item) REFERENCES store.item(id),
CONSTRAINT fk_users_user FOREIGN KEY(id_user) REFERENCES users.user(id)
);


INSERT INTO store.store (id_item, amout, final_amount, id_user) VALUES
(1, 5, '5', 1),  -- Juan Perez compra 5 paquetes de arroz
(2, 3, '3', 2),  -- Maria Gonzalez compra 3 paquetes de azúcar
(3, 2, '2', 3),  -- Pedro Lopez compra 2 botellas de aceite
(4, 4, '4', 4),  -- Luis Martinez compra 4 paquetes de harina
(5, 6, '6', 5),  -- Ana Fernandez compra 6 botellas de leche
(6, 10, '10', 6),  -- Carlos Ramirez compra 10 cajas de huevos
(7, 5, '5', 7),  -- Laura Perez compra 5 panes de caja
(8, 2, '2', 8),  -- David Garcia compra 2 paquetes de café
(9, 3, '3', 9),  -- Isabel Sanchez compra 3 paquetes de galletas
(10, 4, '4', 10),  -- Jose Garcia compra 4 paquetes de papel higiénico
(11, 6, '6', 11),  -- Francisco Herrera compra 6 botellas de detergente
(12, 3, '3', 12),  -- Carolina Salazar compra 3 paquetes de sal
(13, 5, '5', 13),  -- Jorge Castro compra 5 paquetes de pasta
(14, 2, '2', 14),  -- Andres Mendoza compra 2 botellas de jugo
(15, 8, '8', 15),  -- Susana Perez compra 8 cajas de cereal
(16, 4, '4', 16),  -- Daniel Rodriguez compra 4 paquetes de sopa instantánea
(17, 7, '7', 17),  -- Maira Vazquez compra 7 paquetes de toallas de papel
(18, 12, '12', 18),  -- Raul Silva compra 12 latas de cerveza
(19, 5, '5', 19),  -- Carmen Moreno compra 5 botellas de refresco
(20, 3, '3', 20);  -- Emilio Martin compra 3 paquetes de frijoles



CREATE TABLE store.item(
id SERIAL,
name_item TEXT,
description TEXT not null,
CONSTRAINT pk_item PRIMARY KEY(id)
);


INSERT INTO store.item (name_item, description) VALUES
('Arroz', 'Paquete de 1kg de arroz de calidad'),
('Azúcar', 'Paquete de 1kg de azúcar blanca'),
('Aceite', 'Aceite vegetal de 1 litro'),
('Harina', 'Harina de trigo 1kg para repostería y cocina'),
('Leche', 'Leche entera en botella de 1 litro'),
('Huevos', 'Caja con 12 huevos frescos'),
('Pan', 'Pan de caja, 12 rebanadas'),
('Café', 'Café molido de 250 gramos'),
('Galletas', 'Paquete de galletas de vainilla'),
('Papel higiénico', 'Paquete de 4 rollos de papel higiénico'),
('Detergente', 'Detergente líquido para lavar platos'),
('Sal', 'Sal de mesa en paquete de 1kg'),
('Pasta', 'Pasta espagueti de 500 gramos'),
('Jugo', 'Jugo natural de naranja en botella de 1 litro'),
('Cereal', 'Cereal integral para desayuno'),
('Sopa instantánea', 'Sopa instantánea de pollo, 5 unidades'),
('Toallas de papel', 'Paquete de toallas de papel absorbente'),
('Cerveza', 'Cerveza en lata de 330ml'),
('Refresco', 'Refresco de cola en botella de 2 litros'),
('Frijoles', 'Frijoles negros en paquete de 1kg');



CREATE TABLE store.promotion(
id SERIAL,
id_item INTEGER,
amount INTEGER,
discount text,
CONSTRAINT pk_promotion PRIMARY KEY(id),
CONSTRAINT fk_store_item FOREIGN KEY(id_item) REFERENCES store.item(id)
);


INSERT INTO store.promotion (id_item, amount, discount) VALUES
(1, 5, '10% off'),  -- Descuento del 10% en arroz
(2, 3, '5% off'),   -- Descuento del 5% en azúcar
(3, 2, '5% off'),   -- Descuento del 5% en aceite
(4, 4, '10% off'),  -- Descuento del 10% en harina
(5, 6, '5% off'),   -- Descuento del 5% en leche
(6, 10, '15% off'), -- Descuento del 15% en huevos
(7, 5, '5% off'),   -- Descuento del 5% en pan
(8, 2, '10% off'),  -- Descuento del 10% en café
(9, 3, '5% off'),   -- Descuento del 5% en galletas
(10, 4, '10% off'), -- Descuento del 10% en papel higiénico
(11, 6, '5% off'),  -- Descuento del 5% en detergente
(12, 3, '5% off'),  -- Descuento del 5% en sal
(13, 5, '10% off'), -- Descuento del 10% en pasta
(14, 2, '5% off'),  -- Descuento del 5% en jugo
(15, 8, '10% off'), -- Descuento del 10% en cereal
(16, 4, '5% off'),  -- Descuento del 5% en sopa instantánea
(17, 7, '10% off'), -- Descuento del 10% en toallas de papel
(18, 12, '10% off'), -- Descuento del 10% en cerveza
(19, 5, '5% off'),  -- Descuento del 5% en refresco
(20, 3, '5% off');  -- Descuento del 5% en frijoles


