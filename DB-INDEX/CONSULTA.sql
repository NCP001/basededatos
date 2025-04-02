--1
SELECT p.id, p.amount, p.discount, p.id_item, i.name_item
FROM store.promotion p
JOIN store.item i ON p.id_item = i.id
WHERE i.id = 10;  -- Sustituir X por el ID del producto específico

--2
SELECT s.id, s.date_sale, s.total, c.name_client
FROM sale.sale s
JOIN sale.client c ON s.id_client = c.id
WHERE s.id_user = 7;  -- Sustituir X por el ID del usuario específico

--3
SELECT e.id, e.name_employee, e.ap_paternal, e.ap_maternal, p.name_c
FROM employee.employee e
JOIN employee.position p ON e.id_position = p.id
WHERE p.name_c = 'Manager';  -- Sustituir X por el nombre del cargo específico

--4
SELECT e.id, e.name_employee, e.ap_paternal, e.ap_maternal, p.name_c, c.name_client, s.date_sale, s.total
FROM employee.employee e
JOIN sale.sale s ON e.id_user = s.id_user
JOIN sale.client c ON s.id_client = c.id
JOIN employee.position p ON e.id_position = p.id;

--5
SELECT i.name_item, 
       SUM(CAST(s.amout AS NUMERIC)) - SUM(CAST(s.final_amount AS NUMERIC)) AS stock_remaining
FROM store.store s
JOIN store.item i ON s.id_item = i.id
WHERE i.id = 5  -- Sustituir X por el ID del producto específico
GROUP BY i.name_item;

--6
SELECT DISTINCT su.name_supplier, su.phone
FROM buy.supplier su
JOIN buy.buy b ON su.id = b.id_supplier
JOIN buy.detali_buy db ON b.id_detali_buy = db.id
JOIN store.item i ON db.id_item = i.id
WHERE i.id = 2;  -- Sustituir X por el ID del producto específico

--CONSULTAS AVANZADAS

--1
SELECT SUM(s.total) AS total_income
FROM sale.sale s
WHERE EXTRACT(MONTH FROM s.date_sale) = 1-12;  -- Sustituir X por el número del mes (1-12)

--2
SELECT i.name_item, SUM(ds.amount) AS total_sold
FROM sale.detali_sale ds
JOIN store.item i ON ds.id_item = i.id
GROUP BY i.name_item
ORDER BY total_sold DESC;

--3
SELECT s.id, s.date_sale, s.total, c.name_client, ds.price, ds.amount, i.name_item
FROM sale.sale s
JOIN sale.client c ON s.id_client = c.id
JOIN sale.detali_sale ds ON s.id_detali_sale = ds.id  -- Corregido aquí: s.id_detali_sale con ds.id
JOIN store.item i ON ds.id_item = i.id
WHERE s.id_user = 4;  -- Sustituir X por el ID del usuario específico

--4
SELECT c.name_client, SUM(s.total) AS total_spent
FROM sale.sale s
JOIN sale.client c ON s.id_client = c.id
GROUP BY c.name_client
ORDER BY total_spent DESC;

--5
SELECT COUNT(*) AS total_clients
FROM sale.client;

--6
SELECT i.name_item, 
       SUM(CAST(s.amout AS NUMERIC)) - SUM(CAST(s.final_amount AS NUMERIC)) AS stock_remaining
FROM store.store s
JOIN store.item i ON s.id_item = i.id
WHERE i.id = 6  -- Sustituir X por el ID del producto específico
GROUP BY i.name_item;
