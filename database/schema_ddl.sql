-- =====================================================
-- ESQUEMA DE DATA WAREHOUSE PARA PyME (STAR SCHEMA)
-- =====================================================

CREATE TABLE IF NOT EXISTS dim_cliente (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo_cliente VARCHAR(50),
    municipio VARCHAR(50) DEFAULT 'Ubaté'
);

CREATE TABLE IF NOT EXISTS dim_producto (
    id_producto SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    precio_unitario NUMERIC(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS dim_tiempo (
    id_tiempo INT PRIMARY KEY,
    fecha DATE NOT NULL,
    anio INT NOT NULL,
    mes INT NOT NULL,
    dia INT NOT NULL,
    trimestre INT NOT NULL
);

CREATE TABLE IF NOT EXISTS hecho_ventas (
    id_venta SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES dim_cliente(id_cliente),
    id_producto INT REFERENCES dim_producto(id_producto),
    id_tiempo INT REFERENCES dim_tiempo(id_tiempo),
    cantidad INT NOT NULL,
    monto_total NUMERIC(12,2) NOT NULL
);
