import pandas as pd

def cargar_y_limpiar_datos(filepath="data/muestra_ventas_local.csv"):
    """Carga datos brutos, formatea fechas y calcula métricas financieras."""
    df = pd.read_csv(filepath)
    df['fecha'] = pd.to_datetime(df['fecha'])
    df['monto_total'] = df['cantidad'] * df['precio_unitario']
    return df

if __name__ == "__main__":
    datos = cargar_y_limpiar_datos()
    print("--- Muestra de datos procesados (ETL) ---")
    print(datos.head())
