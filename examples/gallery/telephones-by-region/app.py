"""
Dash port of Shiny telephones by region example:

https://shiny.rstudio.com/gallery/telephones-by-region.html
"""
import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
import pandas as pd
import plotly.graph_objs as go
from dash.dependencies import Input, Output

data = pd.read_csv("https://cdn.opensource.faculty.ai/world-phones/data.csv")

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

controls = dbc.Card(
    [
        dbc.FormGroup(
            [
                dbc.Label("Region"),
                dcc.Dropdown(
                    id="region-selector",
                    options=[
                        {"label": col, "value": col}
                        for col in data.columns
                        if col != "Year"
                    ],
                    value="S.Amer",
                ),
            ]
        ),
        html.Hr(),
        html.P(
            "Data from AT&T (1961) The World's Telephones.",
            className="text-muted",
        ),
    ],
    body=True,
)

app.layout = dbc.Container(
    [
        html.H1("Telephones by region"),
        html.Hr(),
        dbc.Row(
            [
                dbc.Col(controls, md=4),
                dbc.Col(dcc.Graph(id="phones-graph"), md=8),
            ],
            align="center",
        ),
    ],
    fluid=True,
)


@app.callback(
    Output("phones-graph", "figure"), [Input("region-selector", "value")]
)
def make_graph(region):
    fig_data = [go.Bar(y=data[region])]
    fig_layout = {
        "xaxis": {
            "tickvals": [i for i in range(7)],
            "ticktext": data.Year,
            "title": "Year",
        },
        "yaxis": {"title": "Number of Telephones"},
    }

    return go.Figure(data=fig_data, layout=fig_layout)


if __name__ == "__main__":
    app.run_server(debug=True, port=8888)
