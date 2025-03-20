INSERT INTO roles (rol) VALUES 
('Gerente General'),
('Secretaria'),
('Ingeniero Civil'),
('Ingeniero Hidráulico'),
('Arquitecto'),
('Maestro de Obra'),
('Albañil'),
('Técnico en Instalaciones'),
('Supervisor de Calidad'),
('Vendedor');

INSERT INTO usuarios (nombre, email, contraseña) VALUES 
('Gerardo Bran', 'gerardo.bran@empresa.com', 'gerador123'),
('Evelyn Mendía', 'evelyn.mendia@empresa.com', 'secretaria123'),
('Jorge Tuch', 'jorge.tuch@empresa.com', 'ingeniero123'),
('Carlos López', 'carlos.lopez@empresa.com', 'maestro123'),
('Ana Martínez', 'ana.martinez@empresa.com', 'arquitecto123'),
('Luis Gómez', 'luis.gomez@empresa.com', 'tecnico123'),
('Pedro Ramírez', 'pedro.ramirez@empresa.com', 'supervisor123'),
('Lucía Fernández', 'lucia.fernandez@empresa.com', 'vendedor123'),
('Raúl Pérez', 'raul.perez@empresa.com', 'albanil123'),
('María Sánchez', 'maria.sanchez@empresa.com', 'ingenieroHidraulico123');

INSERT INTO permisos (permiso) VALUES 
('Acceso a la gestión de proyectos'),
('Acceso a informes financieros'),
('Aprobación de materiales'),
('Gestión de personal'),
('Diseño arquitectónico'),
('Inspección de calidad'),
('Acceso a bodega de materiales'),
('Creación de presupuestos'),
('Firma de contratos'),
('Acceso a bases de datos');

INSERT INTO roles_permisos (rol_id, permiso_id) VALUES 
(1, 1), -- Gerente General: Acceso a la gestión de proyectos
(1, 2), -- Gerente General: Acceso a informes financieros
(1, 3), -- Gerente General: Aprobación de materiales
(2, 1), -- Secretaria: Acceso a la gestión de proyectos
(2, 9), -- Secretaria: Firma de contratos
(3, 4), -- Ingeniero Civil: Gestión de personal
(3, 5), -- Ingeniero Civil: Diseño arquitectónico
(4, 6), -- Maestro de Obra: Inspección de calidad
(5, 7), -- Arquitecto: Acceso a bodega de materiales
(6, 8); -- Técnico en Instalaciones: Creación de presupuestos

INSERT INTO usuarios_roles (usuario_id, rol_id) VALUES 
(1, 1), -- Gerardo Bran (Gerente General)
(2, 2), -- Evelyn Mendía (Secretaria)
(3, 3), -- Jorge Tuch (Ingeniero Civil)
(4, 4), -- Carlos López (Maestro de Obra)
(5, 5), -- Ana Martínez (Arquitecto)
(6, 6), -- Luis Gómez (Técnico en Instalaciones)
(7, 7), -- Pedro Ramírez (Supervisor de Calidad)
(8, 8), -- Lucía Fernández (Vendedor)
(9, 9), -- Raúl Pérez (Albañil)
(10, 3); -- María Sánchez (Ingeniero Hidráulico)

INSERT INTO materiales (nombre) VALUES 
('Skimmer'),
('Bomba de agua'),
('Bulbo'),
('Burbujeros'),
('Arena'),
('Aspiradora'),
('Tubos'),
('Filtro'),
('Cloro'),
('Mosaico');

INSERT INTO movimiento_materiales (material_id, tipo, cantidad, proveedor, fecha) VALUES 
(1, 'Compra', 20, 'Multitubo', '2025-03-01'),
(2, 'Compra', 10, 'Aquasistemas', '2025-03-02'),
(3, 'Compra', 15, 'Hidrosistemas', '2025-03-03'),
(4, 'Compra', 30, 'Ferreteria', '2025-03-04'),
(5, 'Compra', 50, 'Multitubo', '2025-03-05'),
(6, 'Compra', 8, 'Aquasistemas', '2025-03-06'),
(7, 'Compra', 25, 'Hidrosistemas', '2025-03-07'),
(8, 'Compra', 12, 'Ferreteria', '2025-03-08'),
(9, 'Compra', 40, 'Multitubo', '2025-03-09'),
(10, 'Compra', 18, 'Aquasistemas', '2025-03-10');

INSERT INTO proyectos (nombre, estado, presupuesto, cliente, fecha_inicio, fecha_fin) VALUES 
('Mefesa', 'En progreso', 50000.00, 'Cliente A', '2025-01-10', '2025-06-15'),
('Metrobom', 'Completado', 75000.00, 'Cliente B', '2024-08-01', '2025-02-20'),
('Mira', 'Pendiente', 60000.00, 'Cliente C', '2025-04-01', NULL),
('Okland', 'En progreso', 85000.00, 'Cliente D', '2025-02-15', '2025-09-30'),
('Metroplaza', 'Completado', 120000.00, 'Cliente E', '2024-05-20', '2025-01-10'),
('Interplaza', 'En progreso', 95000.00, 'Cliente F', '2025-01-25', '2025-07-15'),
('Soloplaza', 'Pendiente', 70000.00, 'Cliente G', '2025-06-01', NULL),
('Casa Puerto', 'En progreso', 45000.00, 'Cliente H', '2025-03-05', '2025-08-20'),
('El Paredon', 'Completado', 110000.00, 'Cliente I', '2024-07-10', '2025-02-15'),
('Casa Antigua', 'En progreso', 65000.00, 'Cliente J', '2025-02-01', '2025-07-10');

INSERT INTO material_proyecto (material_id, proyecto_id, ofrecido, comprado, obra, bodega) VALUES 
(1, 1, 10, 8, 5, 3),
(2, 2, 5, 5, 2, 3),
(3, 3, 15, 12, 10, 2),
(4, 4, 20, 18, 15, 3),
(5, 5, 25, 20, 18, 2),
(6, 6, 10, 9, 7, 2),
(7, 7, 30, 28, 20, 8),
(8, 8, 12, 10, 8, 2),
(9, 9, 18, 16, 12, 4),
(10, 10, 8, 7, 5, 2);

INSERT INTO bodega_proyecto (material_id, tipo, cantidad, proyecto_id, fecha) VALUES 
(1, 'En obra', 5, 1, '2025-03-10'),
(2, 'Inventario', 3, 2, '2025-03-11'),
(3, 'Comprado', 2, 3, '2025-03-12'),
(4, 'En camino', 4, 4, '2025-03-13'),
(5, 'En obra', 10, 5, '2025-03-14'),
(6, 'Inventario', 5, 6, '2025-03-15'),
(7, 'Comprado', 8, 7, '2025-03-16'),
(8, 'En camino', 6, 8, '2025-03-17'),
(9, 'En obra', 7, 9, '2025-03-18'),
(10, 'Inventario', 3, 10, '2025-03-19');

INSERT INTO reportes (proyecto_id, fecha, contenido) VALUES 
(1, '2025-03-10', 'Se ha instalado el sistema de filtración en la piscina.'),
(2, '2025-03-11', 'El proyecto ha sido finalizado con éxito.'),
(3, '2025-03-12', 'Pendiente la aprobación del presupuesto final.'),
(4, '2025-03-13', 'Se han recibido los materiales de construcción.'),
(5, '2025-03-14', 'Piscina lista para pruebas de calidad.'),
(6, '2025-03-15', 'Se iniciaron trabajos en la estructura de la piscina.'),
(7, '2025-03-16', 'Fase de diseño terminada. Listo para construcción.'),
(8, '2025-03-17', 'Pendiente la instalación del sistema de burbujas.'),
(9, '2025-03-18', 'Supervisión final realizada, lista para entrega.'),
(10, '2025-03-19', 'Trabajo en progreso, se han completado las excavaciones.');

SELECT * FROM roles;
SELECT * FROM usuarios;
SELECT * FROM permisos;
SELECT * FROM roles_permisos;
SELECT * FROM usuarios_roles;
SELECT * FROM materiales;
SELECT * FROM movimiento_materiales;
SELECT * FROM proyectos;
SELECT * FROM material_proyecto;
SELECT * FROM bodega_proyecto;
SELECT * FROM reportes;