CREATE TABLE sale.sale(
id SERIAL,
date_sale DATE DEFAULT CURRENT_TIMESTAMP,
total INTEGER,
id_client INTEGER NULL,
id_detali_sale INTEGER NOT NULL,
id_user INTEGER NOT NULL,
CONSTRAINT pk_sale PRIMARY KEY (id),
CONSTRAINT fk_sale_client FOREIGN KEY (id_client) REFERENCES sale.client(id),
CONSTRAINT fk_sale_detali_sale FOREIGN KEY(id_detali_sale) REFERENCES sale.detali_sale(id),
CONSTRAINT fk_users_user FOREIGN KEY(id_user) REFERENCES users.user(id)
);


-- Venta 1: Carlos Mendoza (Cliente 1)
INSERT INTO sale.sale (total, id_client, id_detali_sale, id_user) VALUES
(75.00 + 30.00 + 30.00 + 80.00 + 60.00, 1, 1, 1), -- Carlos Mendoza compra arroz, azúcar, aceite, harina y leche

-- Venta 2: Elena García (Cliente 2)
(50.00 + 45.00 + 72.00 + 80.00 + 60.00, 2, 2, 2), -- Elena García compra huevos, pan, café, galletas, y papel higiénico

-- Venta 3: Luis Rodríguez (Cliente 3)
(40.00 + 90.00 + 100.00 + 80.00, 3, 3, 3), -- Luis Rodríguez compra detergente, sal, pasta y jugo

-- Venta 4: Patricia López (Cliente 4)
(60.00 + 15.00 + 200.00, 4, 4, 4), -- Patricia López compra cereal, refresco y cerveza

-- Venta 5: José Pérez (Cliente 5)
(40.00 + 50.00 + 25.00 + 15.00, 5, 5, 5), -- José Pérez compra sopa instantánea, toallas de papel, y frijoles

-- Venta 6: María Ruiz (Cliente 6)
(80.00 + 25.00 + 12.00 + 100.00 + 45.00, 6, 6, 6), -- María Ruiz compra arroz, azúcar, aceite, galletas y café

-- Venta 7: David Fernández (Cliente 7)
(20.00 + 80.00 + 25.00 + 70.00 + 15.00, 7, 7, 7), -- David Fernández compra pan, jugo, galletas y refresco

-- Venta 8: Ana Gómez (Cliente 8)
(15.00 + 30.00 + 40.00 + 60.00 + 10.00, 8, 8, 8), -- Ana Gómez compra pan, leche, jugo, refresco y frijoles

-- Venta 9: Juan Martín (Cliente 9)
(45.00 + 90.00 + 60.00 + 30.00, 9, 9, 9), -- Juan Martín compra cereal, sopa instantánea y refresco

-- Venta 10: Isabel Martínez (Cliente 10)
(12.00 + 15.00 + 40.00 + 20.00 + 18.00, 10, 10, 10); -- Isabel Martínez compra sopa instantánea, galletas y cerveza




CREATE TABLE sale.client(
id SERIAL,
name_client VARCHAR(50),
telf VARCHAR(50),
CONSTRAINT pk_client PRIMARY KEY (id)
);


INSERT INTO sale.client (name_client, telf) VALUES
('Carlos Mendoza', '555-1234'),  -- Cliente 1
('Elena García', '555-5678'),   -- Cliente 2
('Luis Rodríguez', '555-9101'), -- Cliente 3
('Patricia López', '555-1122'), -- Cliente 4
('José Pérez', '555-3344'),     -- Cliente 5
('María Ruiz', '555-5566'),     -- Cliente 6
('David Fernández', '555-7788'),-- Cliente 7
('Ana Gómez', '555-9900'),      -- Cliente 8
('Juan Martín', '555-2233'),    -- Cliente 9
('Isabel Martínez', '555-4455');-- Cliente 10



CREATE TABLE sale.detali_sale(
id SERIAL,
price DECIMAL(10,2),
amount INTEGER,
id_item INTEGER,
CONSTRAINT pk_detali_sale PRIMARY KEY(id),
CONSTRAINT fk_store_item FOREIGN KEY(id_item) REFERENCES store.item(id)
);


INSERT INTO sale.detali_sale (price, amount, id_item) VALUES
(25.00, 3, 1),  -- Arroz (3 unidades) 
(15.00, 2, 2),  -- Azúcar (2 unidades)
(30.00, 1, 3),  -- Aceite (1 unidad)
(20.00, 4, 4),  -- Harina (4 unidades)
(12.00, 5, 5),  -- Leche (5 unidades)
(18.00, 6, 6),  -- Huevos (6 unidades)
(10.00, 7, 7),  -- Pan (7 unidades)
(35.00, 2, 8),  -- Café (2 unidades)
(8.00, 10, 9),  -- Galletas (10 unidades)
(20.00, 3, 10), -- Papel higiénico (3 unidades)
(50.00, 2, 11), -- Detergente (2 unidades)
(5.00, 8, 12),  -- Sal (8 unidades)
(10.00, 5, 13), -- Pasta (5 unidades)
(25.00, 3, 14), -- Jugo (3 unidades)
(40.00, 4, 15), -- Cereal (4 unidades)
(12.00, 6, 16), -- Sopa instantánea (6 unidades)
(18.00, 5, 17), -- Toallas de papel (5 unidades)
(30.00, 10, 18), -- Cerveza (10 unidades)
(15.00, 7, 19), -- Refresco (7 unidades)
(25.00, 3, 20); -- Frijoles (3 unidades)


