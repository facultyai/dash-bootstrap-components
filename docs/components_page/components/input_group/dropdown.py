import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output

dropdown_menu_items = [
    dbc.DropdownMenuItem("Deep thought", id="dropdown-menu-item-1"),
    dbc.DropdownMenuItem("Hal", id="dropdown-menu-item-2"),
    dbc.DropdownMenuItem(divider=True),
    dbc.DropdownMenuItem("Clear", id="dropdown-menu-item-clear"),
]


input_group = html.Div(
    [
        html.H4("DropdownMenu"),
        html.Div(
            [
                dbc.InputGroup(
                    [
                        dbc.DropdownMenu(
                            dropdown_menu_items,
                            label="Generate",
                            addon_type="prepend",
                        ),
                        dbc.Input(
                            id="input-group-dropdown-input", placeholder="name"
                        ),
                    ]
                )
            ]
        ),
    ]
)


@app.callback(
    Output("input-group-dropdown-input", "value"),
    [
        Input("dropdown-menu-item-1", "n_clicks_timestamp"),
        Input("dropdown-menu-item-2", "n_clicks_timestamp"),
        Input("dropdown-menu-item-clear", "n_clicks_timestamp"),
    ],
)
def on_button_click(n_clicks_t1, n_clicks_t2, n_clicks_tclear):
    if n_clicks_t1 is None and n_clicks_t2 is None:
        return ""
    n_clicks_t1 = n_clicks_t1 if n_clicks_t1 is not None else -1
    n_clicks_t2 = n_clicks_t2 if n_clicks_t2 is not None else -1
    n_clicks_tclear = n_clicks_tclear if n_clicks_tclear is not None else -1
    latest_timestamp = max(n_clicks_tclear, n_clicks_t1, n_clicks_t2)
    print(latest_timestamp)
    if latest_timestamp == n_clicks_tclear:
        return ""
    elif latest_timestamp == n_clicks_t1:
        names = ["Arthur Dent", "Ford Prefect", "Trillian Astra"]
        which = n_clicks_t1 % len(names)
        return names[which]
    else:
        names = ["David Bowman", "Frank Poole", "Dr. Heywood Floyd"]
        which = n_clicks_t2 % len(names)
        return names[which]
