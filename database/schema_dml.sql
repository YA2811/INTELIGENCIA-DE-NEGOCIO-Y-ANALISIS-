INSERT INTO dim_cliente (nombre, tipo_cliente, municipio) VALUES
('Comercializadora El Valle', 'Mayorista', 'Ubaté'),
('Lácteos La Villa', 'Minorista', 'Suta'),
('AgroServicios del Norte', 'Minorista', 'Ubaté');

INSERT INTO dim_producto (nombre_producto, categoria, precio_unitario) VALUES
('Queso Doble Crema 500g', 'Lácteos', 12500.00),
('Mantequilla Artesanal 250g', 'Lácteos', 8000.00),
('Bulto Concentrado 50kg', 'Agro', 95000.00);

INSERT INTO dim_tiempo (id_tiempo, fecha, anio, mes, dia, trimestre) VALUES
(20260917, '2026-09-17', 2026, 9, 17, 3);

INSERT INTO hecho_ventas (id_cliente, id_producto, id_tiempo, cantidad, monto_total) VALUES
(1, 1, 20260917, 20, 250000.00),
(2, 2, 20260917, 10, 80000.00);
