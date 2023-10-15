import dash_bootstrap_components as dbc
from dash import html

flights = html.Div([html.I(className="bi bi-airplane pe-1"), "Flights"])
car = html.Div([html.I(className="bi bi-car-front pe-1"), "Rental Car"])
hotel = html.Div([html.I(className="bi bi-house pe-1"), "Hotel"])

radioitems = html.Div(
    [
        dbc.Label("Booking"),
        dbc.RadioItems(
            options=[
                {"label": flights, "value": 1},
                {"label": car, "value": 2},
                {"label": hotel, "value": 3},
            ],
            value=1,
            id="radioitems-with-icons",
        ),
    ]
)

checkbox = dbc.Checkbox(
    id="checkbox-with-link",
    label=html.Div(
        ["I agree to the ", html.A("Terms and Conditions", href="#")]
    ),
    value=False,
)

components_in_labels = html.Div([radioitems, html.Hr(), checkbox])
