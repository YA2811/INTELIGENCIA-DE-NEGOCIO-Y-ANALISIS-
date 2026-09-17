import streamlit as st
import pandas as pd
import plotly.express as px
from src.etl_pipeline import cargar_y_limpiar_datos

st.set_page_config(page_title="BI PyMEs - Valle de Ubate", layout="wide")

st.title("📊 Dashboard de Inteligencia de Negocios - PyMEs")
st.markdown("### Región del Valle de Ubaté | Analítica Descriptiva")

df = cargar_y_limpiar_datos()

# Métricas Clave (KPIs)
col1, col2, col3 = st.columns(3)
total_ventas = df['monto_total'].sum()
total_unidades = df['cantidad'].sum()
ticket_promedio = df['monto_total'].mean()

col1.metric("Ventas Totales", f"$ {total_ventas:,.0f}")
col2.metric("Unidades Vendidas", f"{total_unidades:,}")
col3.metric("Ticket Promedio", f"$ {ticket_promedio:,.0f}")

st.markdown("---")

# Gráficos Analíticos
c1, c2 = st.columns(2)

with c1:
    st.subheader("Ventas por Categoría de Producto")
    fig_cat = px.pie(df, values='monto_total', names='categoria', hole=0.4)
    st.plotly_chart(fig_cat, use_container_width=True)

with c2:
    st.subheader("Ventas por Municipio")
    fig_mun = px.bar(df, x='municipio', y='monto_total', color='categoria', barmode='group')
    st.plotly_chart(fig_mun, use_container_width=True)

# Detalle de Transacciones
st.subheader("📋 Registro de Transacciones Procesadas")
st.dataframe(df, use_container_width=True)
