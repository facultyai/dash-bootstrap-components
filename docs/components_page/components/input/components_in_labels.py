from dash import Dash, html
import dash_bootstrap_components as dbc

flights = html.Div([html.Div(className="fa fa-plane pe-1"), "Flights"])
car = html.Div([html.Div(className="fa fa-car pe-1"), "Rental Car"])
hotel = html.Div([html.Div(className="fa fa-hotel pe-1"), "Hotel"])

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
            id="radioitems-input",
        ),
    ]
)

checkbox = dbc.Checkbox(
    id="standalone-checkbox",
    label=html.Div(
        ["I agree to the ", html.A("Terms and Conditions", href="#")]
    ),
    value=False,
)

components_in_labels = html.Div([radioitems, html.Hr(), checkbox])
