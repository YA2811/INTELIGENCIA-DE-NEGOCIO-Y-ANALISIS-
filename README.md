# 🥛 Plataforma de Inteligencia de Negocio y Análisis de Ventas - Productos Lácteos Artesanales

[![Python](https://img.shields.io/badge/Python-3.10%2B-blue?logo=python&logoColor=white)](https://www.python.org/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-15.0%2B-336791?logo=postgresql&logoColor=white)](https://www.postgresql.org/)
[![Streamlit](https://img.shields.io/badge/Streamlit-1.28%2B-FF4B4B?logo=streamlit&logoColor=white)](https://streamlit.io/)
[![SQLAlchemy](https://img.shields.io/badge/SQLAlchemy-2.0%2B-red?logo=sqlalchemy&logoColor=white)](https://www.sqlalchemy.org/)
[![pytest](https://img.shields.io/badge/pytest-7.0%2B-0A9EDC?logo=pytest&logoColor=white)](https://docs.pytest.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Solución integral de **Business Intelligence (BI)** y **Analítica de Datos** orientada a la toma de decisiones estratégicas en el sector de productos lácteos artesanales (leche, yogurt, arequipe). Este proyecto abarca la ingesta, limpieza, modelado dimensional en estrella y visualización interactiva de ventas y márgenes financieros.

---

## 📌 Tabla de Contenidos
- [Características Principales](#-características-principales)
- [Arquitectura de Datos](#-arquitectura-de-datos)
- [Estructura del Repositorio](#-estructura-del-repositorio)
- [Requisitos Previos](#-requisitos-previos)
- [Instalación y Configuración](#-instalación-y-configuración)
- [Ejecución del Proyecto](#-ejecución-del-proyecto)
- [Pruebas Unitarias](#-pruebas-unitarias)
- [Gestión del Proyecto (Metodología Ágil)](#-gestión-del-proyecto-metodología-ágil)
- [Autor](#-autor)

---

## 🚀 Características Principales

- **Pipeline ETL Automatizado:** Extracción y transformación de datos heterogéneos de ventas mediante Python.
- **Modelo Dimensional Optimizado:** Diseño de esquema en estrella (`dim_tiempo`, `dim_producto`, `hechos_ventas`) en PostgreSQL para procesamiento analítico ágil.
- **Carga de Datos Segura:** Uso de SQLAlchemy para la gestión de transacciones e inserción eficiente de registros.
- **Dashboard Interactivo:** Interfaz gráfica desarrollada en Streamlit con filtros dinámicos por categorías, productos y períodos.
- **Control de Calidad de Datos:** Validaciones automatizadas con `pytest` para evitar datos nulos o duplicados en métricas clave.

---

## 📐 Arquitectura de Datos

```text
[ Datos de Origen ] ➔ [ Script ETL (Python) ] ➔ [ Base de Datos OLAP (PostgreSQL) ] ➔ [ Dashboard (Streamlit) ]

---

├── data/                  # Conjuntos de datos raw y procesados
├── docs/                  # Documentación del proyecto (Anexos, Acta de Validación)
├── src/
│   ├── etl_pipeline.py    # Script de Extracción, Transformación y Carga
│   ├── db_connection.py   # Configuración y motor SQLAlchemy
│   └── app.py             # Aplicación interactiva de Streamlit
├── tests/
│   └── test_quality.py    # Pruebas unitarias de calidad con pytest
├── .gitignore             # Archivos excluidos de control de versiones
├── README.md              # Documentación principal del repositorio
└── requirements.txt       # Dependencias y librerías de Python

