import dash_bootstrap_components as dbc
import pandas as pd

df = pd.DataFrame(
    {
        ("Score", "Max"): {
            "Arthur Dent": 6.0,
            "Ford Prefect": 4.0,
            "Zaphod Beeblebrox": 1.0,
            "Trillian Astra": 3.0,
        },
        ("Score", "Average"): {
            "Arthur Dent": 2.0,
            "Ford Prefect": 2.0,
            "Zaphod Beeblebrox": 0.7,
            "Trillian Astra": 1.9,
        },
    }
)
df.index.set_names("Name", inplace=True)

table = dbc.Table.from_dataframe(
    df, striped=True, bordered=True, hover=True, index=True
)
