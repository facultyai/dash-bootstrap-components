import dash_bootstrap_components as dbc
import dash_html_components as html
import pandas as pd

df = pd.DataFrame(
    {
        "First Name": ["Arthur", "Ford", "Zaphod", "Trillian"],
        "Last Name": ["Dent", "Prefect", "Beeblebrox", "Astra"],
    }
)

table_header = [
    html.Thead(html.Tr(children=[html.Th(col) for col in df.columns]))
]

table_body = [
    html.Tbody(
        [
            html.Tr([html.Td(df.loc[i, col]) for col in df.columns])
            for i in df.index
        ]
    )
]

table = dbc.Table(table_header + table_body, bordered=True)
