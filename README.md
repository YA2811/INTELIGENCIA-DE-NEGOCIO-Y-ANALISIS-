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
- [Historias de Usuario](#-historias-de-usuario)
- [Requisitos Previos](#-requisitos-previos)
- [Instalación y Configuración](#-instalación-y-configuración)
- [Ejecución del Proyecto](#-ejecución-del-proyecto)
- [Pruebas Unitarias](#-pruebas-unitarias)
- [Gestión del Proyecto (Metodología Ágil)](#-gestión-del-proyecto-metodología-ágil)
- [Acta de Validación de Usuario Final](#-acta-de-validación-de-usuario-final)
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
```

---

## 📂 Estructura del Repositorio

```text
├── data/                  # Conjuntos de datos raw y procesados
├── database/              # Scripts SQL de creación de tablas y consultas
├── docs/                  # Documentación del proyecto (Anexos, Acta de Validación)
├── src/
│   ├── etl_pipeline.py    # Script de Extracción, Transformación y Carga
│   └── db_connection.py   # Configuración y motor SQLAlchemy
├── tests/
│   └── test_quality.py    # Pruebas unitarias de calidad con pytest
├── .gitignore             # Archivos excluidos de control de versiones
├── README.md              # Documentación principal del repositorio
├── app.py                 # Aplicación interactiva de Streamlit
└── requirements.txt       # Dependencias y librerías de Python
```

---

## 🛠️ Requisitos Previos

Asegúrate de contar con lo siguiente instalado en tu entorno local:

- **Python:** 3.10 o superior
- **PostgreSQL:** 14.0 o superior
- **Git:** Para clonar y gestionar el repositorio

---

## ⚙️ Instalación y Configuración

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/YA2811/INTELIGENCIA-DE-NEGOCIO-Y-ANALISIS.git
   cd INTELIGENCIA-DE-NEGOCIO-Y-ANALISIS
   ```

2. **Crear y activar un entorno virtual:**
   ```bash
   # En Windows
   python -m venv venv
   .\venv\Scripts\activate

   # En Linux/macOS
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Instalar dependencias:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Configurar variables de entorno:**
   Crea un archivo `.env` en la raíz del proyecto con las credenciales de PostgreSQL:
   ```env
   DB_HOST=localhost
   DB_PORT=5432
   DB_NAME=bd_lacteos_pgc
   DB_USER=postgres
   DB_PASSWORD=tu_contraseña
   ```

---

## 🏃 Ejecución del Proyecto

### 1. Ejecutar el Pipeline ETL
Para procesar los datos de origen e insertarlos en la base de datos PostgreSQL:
```bash
python src/etl_pipeline.py
```

### 2. Iniciar el Dashboard en Streamlit
Para desplegar la aplicación interactiva en tu navegador:
```bash
streamlit run app.py
```

---

## 🧪 Pruebas Unitarias

Para ejecutar las validaciones automatizadas de calidad de datos y verificar que los tests pasen con éxito:
```bash
pytest tests/
```

---

## 📊 Gestión del Proyecto (Metodología Ágil)

La planificación y ejecución del proyecto se gestionan mediante **GitHub Projects** aplicando la metodología Kanban/Scrum en **Sprints de 3 semanas (21 días)**.

- **Tablero Kanban:** `PGC - Tablero de Gestión Ágil`
- **Seguimiento de Tareas:** Organizado mediante *Issues* vinculados a Historias de Usuario (`HU-01` a `HU-06`).

---

## 📜 Acta de Validación de Usuario Final (Dashboard en Streamlit)

**Fecha de realización:** 18 de septiembre de 2026  
**Proyecto:** *Inteligencia de Negocio y Análisis de Ventas (PGC)*  
**Evaluador / Usuario Final:** Responsable de Área Financiera y Comercial  
**Desarrollador / Líder del Proyecto:** YA2811  

### 1. Criterios y Resultados de Pruebas

| Criterio de Aceptación | Descripción de la Prueba | Resultado | Observaciones |
| :--- | :--- | :---: | :--- |
| **Carga e Integración** | Conexión e inserción de datos procesados mediante la canalización ETL hacia PostgreSQL. | **Aprobado** | La base de datos responde de manera continua y consistente. |
| **Integridad de Datos** | Ausencia de registros nulos y duplicados validados con `pytest`. | **Aprobado** | Cobertura del 100% en claves primarias y campos obligatorios. |
| **Filtros Dinámicos** | Interacción con filtros por rango de fechas y categorías dentro de Streamlit. | **Aprobado** | Actualización de gráficos en tiempo real sin latencia perceptible. |
| **Cálculo de KPIs** | Verificación de métricas financieras: `monto_total_venta` y `margen_ganancia_bruta`. | **Aprobado** | Conciliación exacta contra los datos maestros de origen. |

### 2. Declaración de Conformidad
El usuario final confirma que la aplicación en **Streamlit** cumple satisfactoriamente con la totalidad de los criterios de aceptación definidos en las Historias de Usuario `HU-05` e `HU-06`. La solución queda homologada y lista para su presentación final en el marco del Proyecto de Grado / PGC.

---

## 👤 Autor

- **Desarrollador / Líder Técnico:** Yenifer Andrea Santana Farfan
- **Proyecto de Grado / PGC:** Inteligencia de Negocio y Análisis de Ventas
