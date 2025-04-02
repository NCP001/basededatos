CREATE TABLE employee.employee(
id SERIAL,
id_user INTEGER,
name_employee TEXT,
ap_paternal TEXT,
ap_maternal TEXT,
CONSTRAINT pk_employee PRIMARY KEY(id),
CONSTRAINT fk_users_user FOREIGN KEY(id_user) REFERENCES users.user(id)
);

ALTER TABLE employee.employee
ADD COLUMN id_position INTEGER;


INSERT INTO employee.employee (id_user, name_employee, ap_paternal, ap_maternal) VALUES
(1, 'Juan Perez', 'Perez', 'Gonzalez'),
(2, 'Maria Gonzalez', 'Gonzalez', 'Fernandez'),
(3, 'Pedro Lopez', 'Lopez', 'Martinez'),
(4, 'Luis Martinez', 'Martinez', 'Lopez'),
(5, 'Ana Fernandez', 'Fernandez', 'Gonzalez'),
(6, 'Carlos Ramirez', 'Ramirez', 'Hernandez'),
(7, 'Laura Perez', 'Perez', 'Salazar'),
(8, 'David Garcia', 'Garcia', 'Sanchez'),
(9, 'Isabel Sanchez', 'Sanchez', 'Moreno'),
(10, 'Jose Garcia', 'Garcia', 'Rodriguez'),
(11, 'Francisco Herrera', 'Herrera', 'Mendoza'),
(12, 'Carolina Salazar', 'Salazar', 'Acosta'),
(13, 'Jorge Castro', 'Castro', 'Blanco'),
(14, 'Andres Mendoza', 'Mendoza', 'Martinez'),
(15, 'Susana Perez', 'Perez', 'Moreno'),
(16, 'Daniel Rodriguez', 'Rodriguez', 'Garcia'),
(17, 'Maira Vazquez', 'Vazquez', 'Fernandez'),
(18, 'Raul Silva', 'Silva', 'Diaz'),
(19, 'Carmen Moreno', 'Moreno', 'Blanco'),
(20, 'Emilio Martin', 'Martin', 'Castro'),
(21, 'Patricia Tapia', 'Tapia', 'Silva'),
(22, 'Vicente Blanco', 'Blanco', 'Molina'),
(23, 'Margarita Diaz', 'Diaz', 'Vazquez'),
(24, 'Josefina Morales', 'Morales', 'Sanchez'),
(25, 'Alberto Hernandez', 'Hernandez', 'Gomez'),
(26, 'Liliana Acosta', 'Acosta', 'Perez'),
(27, 'Gonzalo Rodriguez', 'Rodriguez', 'Luna'),
(28, 'Veronica Vazquez', 'Vazquez', 'Garcia'),
(29, 'Fernando Campos', 'Campos', 'Hernandez'),
(30, 'Adrian Fuentes', 'Fuentes', 'Gonzalez'),
(31, 'Raquel Ortiz', 'Ortiz', 'Mendoza'),
(32, 'Elias Rios', 'Rios', 'Martinez'),
(33, 'Monica Bernal', 'Bernal', 'Castro'),
(34, 'Alvaro Molina', 'Molina', 'Torres'),
(35, 'Patricia Fernandez', 'Fernandez', 'Lopez'),
(36, 'Guillermo Tapia', 'Tapia', 'Salazar'),
(37, 'Angel Gomez', 'Gomez', 'Blanco'),
(38, 'Silvia Villarreal', 'Villarreal', 'Pérez'),
(39, 'Francisco Delgado', 'Delgado', 'Martinez'),
(40, 'Clara Martin', 'Martin', 'Vazquez'),
(41, 'Armando Luna', 'Luna', 'Hernandez'),
(42, 'Gabriela Torres', 'Torres', 'Diaz'),
(43, 'Karen Diaz', 'Diaz', 'Gonzalez'),
(44, 'Manuel Reyes', 'Reyes', 'Rodriguez'),
(45, 'Isabel Garcia', 'Garcia', 'Martinez'),
(46, 'Jose Luis Gonzalez', 'Gonzalez', 'Moreno'),
(47, 'Alexis Silva', 'Silva', 'Hernandez'),
(48, 'Marcos Rodriguez', 'Rodriguez', 'Salazar'),
(49, 'Veronica Lopez', 'Lopez', 'Mendoza'),
(50, 'Luis Hernandez', 'Hernandez', 'Gomez'),
(51, 'Patricia Tapia', 'Tapia', 'Luna'),
(52, 'Jorge Bravo', 'Bravo', 'Diaz'),
(53, 'Andrea Delgado', 'Delgado', 'Pérez'),
(54, 'Daniel Alvarez', 'Alvarez', 'Sanchez'),
(55, 'Lucia Diaz', 'Diaz', 'Rodriguez'),
(56, 'Victor Castro', 'Castro', 'Blanco'),
(57, 'Sonia Rodriguez', 'Rodriguez', 'Mendoza'),
(58, 'Oscar Perez', 'Perez', 'Vazquez'),
(59, 'Beatriz Mendoza', 'Mendoza', 'Fernandez'),
(60, 'Felipe Blanco', 'Blanco', 'Castro');



CREATE TABLE employee.control_access(
id SERIAL,
id_user INTEGER,
admin_access TEXT,
sale TEXT,
buy TEXT,
store TEXT,
CONSTRAINT pk_control_access PRIMARY KEY(id),
CONSTRAINT fk_users_user FOREIGN KEY(id_user) REFERENCES users.user(id)
);


INSERT INTO employee.control_access (id_user, admin_access, sale, buy, store) VALUES
(1, 'Yes', 'Yes', 'Yes', 'No'),
(2, 'No', 'Yes', 'No', 'Yes'),
(3, 'Yes', 'Yes', 'Yes', 'Yes'),
(4, 'No', 'No', 'Yes', 'Yes'),
(5, 'Yes', 'Yes', 'Yes', 'No'),
(6, 'No', 'Yes', 'No', 'Yes'),
(7, 'Yes', 'No', 'Yes', 'No'),
(8, 'Yes', 'Yes', 'Yes', 'Yes'),
(9, 'No', 'No', 'Yes', 'No'),
(10, 'Yes', 'Yes', 'No', 'Yes'),
(11, 'Yes', 'Yes', 'Yes', 'No'),
(12, 'No', 'Yes', 'Yes', 'Yes'),
(13, 'Yes', 'Yes', 'Yes', 'No'),
(14, 'No', 'Yes', 'No', 'Yes'),
(15, 'Yes', 'Yes', 'Yes', 'Yes'),
(16, 'No', 'Yes', 'No', 'No'),
(17, 'Yes', 'No', 'Yes', 'Yes'),
(18, 'No', 'No', 'Yes', 'Yes'),
(19, 'Yes', 'Yes', 'Yes', 'No'),
(20, 'No', 'Yes', 'No', 'Yes'),
(21, 'Yes', 'No', 'Yes', 'Yes'),
(22, 'No', 'Yes', 'No', 'No'),
(23, 'Yes', 'Yes', 'Yes', 'No'),
(24, 'No', 'Yes', 'Yes', 'Yes'),
(25, 'Yes', 'No', 'Yes', 'No'),
(26, 'No', 'Yes', 'No', 'Yes'),
(27, 'Yes', 'Yes', 'Yes', 'Yes'),
(28, 'No', 'No', 'Yes', 'Yes'),
(29, 'Yes', 'Yes', 'Yes', 'No'),
(30, 'No', 'Yes', 'No', 'Yes'),
(31, 'Yes', 'No', 'Yes', 'No'),
(32, 'No', 'Yes', 'Yes', 'Yes'),
(33, 'Yes', 'Yes', 'No', 'Yes'),
(34, 'No', 'No', 'Yes', 'No'),
(35, 'Yes', 'Yes', 'Yes', 'Yes'),
(36, 'No', 'Yes', 'No', 'No'),
(37, 'Yes', 'Yes', 'Yes', 'Yes'),
(38, 'No', 'Yes', 'Yes', 'Yes'),
(39, 'Yes', 'Yes', 'No', 'No'),
(40, 'No', 'Yes', 'No', 'Yes'),
(41, 'Yes', 'Yes', 'Yes', 'Yes'),
(42, 'No', 'Yes', 'No', 'No'),
(43, 'Yes', 'No', 'Yes', 'No'),
(44, 'No', 'Yes', 'Yes', 'Yes'),
(45, 'Yes', 'Yes', 'Yes', 'Yes'),
(46, 'No', 'Yes', 'No', 'No'),
(47, 'Yes', 'No', 'Yes', 'Yes'),
(48, 'No', 'Yes', 'Yes', 'No'),
(49, 'Yes', 'Yes', 'Yes', 'Yes'),
(50, 'No', 'Yes', 'No', 'Yes'),
(51, 'Yes', 'Yes', 'Yes', 'No'),
(52, 'No', 'No', 'Yes', 'Yes'),
(53, 'Yes', 'Yes', 'No', 'Yes'),
(54, 'No', 'Yes', 'Yes', 'No'),
(55, 'Yes', 'Yes', 'No', 'Yes'),
(56, 'No', 'Yes', 'No', 'Yes'),
(57, 'Yes', 'No', 'Yes', 'Yes'),
(58, 'No', 'Yes', 'Yes', 'Yes'),
(59, 'Yes', 'Yes', 'Yes', 'No'),
(60, 'No', 'Yes', 'No', 'Yes');



CREATE TABLE employee.position(
id SERIAL,
name_c TEXT,
description_c TEXT,
CONSTRAINT pk_position PRIMARY KEY(id)
);
--INDEX-3
CREATE INDEX idx_position_name_c ON employee.position(name_c);

INSERT INTO employee.position (name_c, description_c) VALUES
('Manager', 'Responsible for overseeing operations'),
('Salesperson', 'Responsible for sales operations'),
('Buyer', 'Handles purchases and procurement'),
('Storekeeper', 'Manages inventory and store organization');



CREATE TABLE employee.contact (
id SERIAL,
date_c DATE DEFAULT CURRENT_TIMESTAMP,
type_c TEXT,
time TEXT,
id_employee INTEGER,
id_position INTEGER,
CONSTRAINT pk_contact PRIMARY KEY(id),
CONSTRAINT fk_employee_employee FOREIGN KEY(id_employee) REFERENCES employee.employee(id),
CONSTRAINT fk_employee_position FOREIGN KEY(id_position) REFERENCES employee.position(id)
);



INSERT INTO employee.contact (date_c, type_c, time, id , id_position) VALUES
(CURRENT_DATE, 'Call', '09:00', 1, 1),
(CURRENT_DATE, 'Email', '10:00', 2, 2),
(CURRENT_DATE, 'Meeting', '11:00', 3, 3),
(CURRENT_DATE, 'Call', '12:00', 4, 4);




CREATE TABLE employee.area(
id SERIAL,
location_a TEXT,
description_a text,
n_area INTEGER,
CONSTRAINT pk_area PRIMARY KEY(id)
);


INSERT INTO employee.area (location_a, description_a, n_area) VALUES
('Main Office', 'Headquarters of the company', 1),
('Warehouse', 'Storage area for products', 2),
('Retail Store', 'Customer-facing retail area', 3);



CREATE TABLE employee.assign_area(
id SERIAL,
id_employee INTEGER,
id_area INTEGER,
CONSTRAINT pk_assign_area PRIMARY KEY(id),
CONSTRAINT fk_employee_employee FOREIGN KEY(id_employee) REFERENCES employee.employee(id),
CONSTRAINT fk_employee_area FOREIGN KEY(id_area) REFERENCES employee.area(id)
);


INSERT INTO employee.assign_area (id, id_area) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 1);



