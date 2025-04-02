CREATE TABLE buy.buy(
id SERIAL,
date_buy DATE DEFAULT CURRENT_TIMESTAMP,
id_user INTEGER,
id_detali_buy INTEGER,
id_supplier INTEGER,
CONSTRAINT pk_buy PRIMARY KEY(id),
CONSTRAINT fk_users_user FOREIGN KEY(id_user) REFERENCES users.user(id),
CONSTRAINT fk_buy_detali_buy FOREIGN KEY(id_detali_buy) REFERENCES buy.detali_buy(id),
CONSTRAINT fk_buy_supplier FOREIGN KEY(id_supplier) REFERENCES buy.supplier(id)
);


INSERT INTO buy.buy (id_user, id_detali_buy, id_supplier) VALUES
(1, 1, 1),  -- Juan Perez compra arroz (Proveedor A)
(2, 2, 1),  -- Maria Gonzalez compra azúcar (Proveedor A)
(3, 3, 2),  -- Pedro Lopez compra aceite (Proveedor B)
(4, 4, 2),  -- Luis Martinez compra harina (Proveedor B)
(5, 5, 7),  -- Ana Fernandez compra leche (Proveedor G)
(6, 6, 7),  -- Carlos Ramirez compra huevos (Proveedor G)
(7, 7, 7),  -- Laura Perez compra pan (Proveedor G)
(8, 8, 4),  -- David Garcia compra café (Proveedor D)
(9, 9, 3),  -- Isabel Sanchez compra galletas (Proveedor C)
(10, 10, 3), -- Jose Garcia compra papel higiénico (Proveedor C)
(11, 11, 4), -- Francisco Herrera compra detergente (Proveedor D)
(12, 12, 4), -- Carolina Salazar compra sal (Proveedor D)
(13, 13, 4), -- Jorge Castro compra pasta (Proveedor D)
(14, 14, 5), -- Andres Mendoza compra jugo (Proveedor F)
(15, 15, 5), -- Susana Perez compra cereal (Proveedor F)
(16, 16, 6), -- Daniel Rodriguez compra sopa instantánea (Proveedor E)
(17, 17, 6), -- Maira Vazquez compra toallas de papel (Proveedor E)
(18, 18, 9), -- Raul Silva compra cerveza (Proveedor I)
(19, 19, 9), -- Carmen Moreno compra refresco (Proveedor I)
(20, 20, 10); -- Emilio Martin compra frijoles (Proveedor J)




CREATE TABLE buy.supplier(
id SERIAL,
name_supplier TEXT NOT NULL,
phone VARCHAR(20) NOT NULL,
CONSTRAINT pk_supplier PRIMARY KEY(id)
);
--INDEX-6
CREATE INDEX idx_buy_id_supplier ON buy.buy(id_supplier);

INSERT INTO buy.supplier (name_supplier, phone) VALUES
('Proveedor A', '123-456-7890'),  -- Proveedor de arroz, azúcar, aceite, etc.
('Proveedor B', '098-765-4321'),  -- Proveedor de leche, pan, café, etc.
('Proveedor C', '567-890-1234'),  -- Proveedor de galletas, papel higiénico, etc.
('Proveedor D', '654-321-9870'),  -- Proveedor de detergente, pasta, sopa, etc.
('Proveedor E', '321-654-9870'),  -- Proveedor de refrescos, cerveza, frijoles, etc.
('Proveedor F', '234-567-8901'),  -- Proveedor de cereales y jugos
('Proveedor G', '987-654-3210'),  -- Proveedor de productos de panadería y lácteos
('Proveedor H', '876-543-2109'),  -- Proveedor de productos de limpieza y aseo
('Proveedor I', '765-432-1098'),  -- Proveedor de snacks y bebidas
('Proveedor J', '543-210-9876');  -- Proveedor de productos de higiene y cocina




CREATE TABLE buy.detali_buy(
id SERIAL,
quantity INTEGER NOT NULL,
price DECIMAL (10,2) NOT NULL,
type_detali_buy TEXT,
id_item INTEGER NOT NULL,
CONSTRAINT pk_detali_buy PRIMARY KEY(id),
CONSTRAINT fk_buy_item FOREIGN KEY (id_item) REFERENCES store.item(id)
);
--INDEX-6
CREATE INDEX idx_detali_buy_id_item ON buy.detali_buy(id_item);


INSERT INTO buy.detali_buy (quantity, price, type_detali_buy, id_item) VALUES
(10, 25.00, 'Compra mayorista', 1),  -- Arroz (Proveedor A)
(20, 15.00, 'Compra mayorista', 2),  -- Azúcar (Proveedor A)
(15, 30.00, 'Compra mayorista', 3),  -- Aceite (Proveedor B)
(30, 20.00, 'Compra mayorista', 4),  -- Harina (Proveedor B)
(50, 12.00, 'Compra mayorista', 5),  -- Leche (Proveedor G)
(60, 18.00, 'Compra mayorista', 6),  -- Huevos (Proveedor G)
(40, 10.00, 'Compra mayorista', 7),  -- Pan (Proveedor G)
(15, 35.00, 'Compra mayorista', 8),  -- Café (Proveedor D)
(25, 8.00, 'Compra mayorista', 9),   -- Galletas (Proveedor C)
(50, 20.00, 'Compra mayorista', 10), -- Papel higiénico (Proveedor C)
(30, 50.00, 'Compra mayorista', 11), -- Detergente (Proveedor D)
(20, 5.00, 'Compra mayorista', 12),  -- Sal (Proveedor D)
(25, 10.00, 'Compra mayorista', 13), -- Pasta (Proveedor D)
(10, 25.00, 'Compra mayorista', 14), -- Jugo (Proveedor F)
(20, 40.00, 'Compra mayorista', 15), -- Cereal (Proveedor F)
(50, 12.00, 'Compra mayorista', 16), -- Sopa instantánea (Proveedor E)
(35, 18.00, 'Compra mayorista', 17), -- Toallas de papel (Proveedor E)
(60, 30.00, 'Compra mayorista', 18), -- Cerveza (Proveedor I)
(30, 15.00, 'Compra mayorista', 19), -- Refresco (Proveedor I)
(40, 25.00, 'Compra mayorista', 20); -- Frijoles (Proveedor J)



