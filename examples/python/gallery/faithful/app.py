"""
Dash port of Shiny faithful example:

https://shiny.rstudio.com/gallery/faithful.html

Note: the shiny version includes a slider for adjusting the bandwidth of the
density approximation curve, which is not easily adjusted when using
plotly.figure_factory.create_distplot, so it doesn't feature in this example.
"""
import dash
import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html
import pandas as pd
import plotly.figure_factory as ff
from dash.dependencies import Input, Output

DATA = pd.read_csv("https://cdn.opensource.faculty.ai/old-faithful/data.csv")

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

dropdown = dbc.FormGroup(
    [
        dbc.Label("Number of bins in histogram (approximate):"),
        dcc.Dropdown(
            id="dropdown",
            options=[{"label": n, "value": n} for n in [10, 20, 35, 50]],
            value=20,
        ),
    ]
)

checklist = dbc.FormGroup(
    [
        dbc.Label("Extras:"),
        dbc.Checklist(
            id="checklist",
            options=[
                {"label": "Show individual observations", "value": "show_ind"},
                {"label": "Show density estimate", "value": "show_dens"},
            ],
            value=[],
            inline=True,
        ),
    ]
)


app.layout = dbc.Container(
    [
        html.H1("Old Faithful eruption data"),
        html.Hr(),
        dbc.Row(
            [
                dbc.Col(dropdown),
                dbc.Col(checklist, width="auto", align="center"),
            ]
        ),
        html.Br(),
        dcc.Graph(id="graph"),
    ]
)


@app.callback(
    Output("graph", "figure"),
    [Input("dropdown", "value"), Input("checklist", "value")],
)
def make_graph(dropdown_value, checklist_value):
    bin_size = (DATA.eruptions.max() - DATA.eruptions.min()) / dropdown_value
    fig = ff.create_distplot(
        [DATA.eruptions],
        ["Eruption duration"],
        bin_size=bin_size,
        show_curve="show_dens" in checklist_value,
        show_rug="show_ind" in checklist_value,
    )
    fig["layout"].update(
        {
            "title": "Geyser eruption duration",
            "showlegend": False,
            "xaxis": {"title": "Duration (minutes)"},
            "yaxis": {"title": "Density"},
        }
    )
    return fig


if __name__ == "__main__":
    app.run_server(debug=True, port=8888)
