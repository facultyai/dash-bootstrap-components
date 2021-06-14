import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

carousel = html.Div(
    [
        dbc.Carousel(
            id="carousel",
            items=[
                {"id": "1", "src": "/static/images/slide1.svg"},
                {"id": "2", "src": "/static/images/slide2.svg"},
                {"id": "3", "src": "/static/images/slide3.svg"},
            ],
            controls=False,
            indicators=False,
            interval=False,
        ),
        dbc.RadioItems(
            id="slide-number",
            options=[
                {"label": "Slide 1", "value": 0},
                {"label": "Slide 2", "value": 1},
                {"label": "Slide 3", "value": 2},
            ],
            value=0,
            inline=True,
        ),
    ]
)


@app.callback(
    Output("carousel", "active_index"),
    Input("slide-number", "value"),
)
def select_slide(idx):
    return idx
