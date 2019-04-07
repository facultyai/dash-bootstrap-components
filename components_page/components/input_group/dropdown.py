import dash
import dash_bootstrap_components as dbc
from dash.dependencies import Input, Output

dropdown_menu_items = [
    dbc.DropdownMenuItem("Deep thought", id="dropdown-menu-item-1"),
    dbc.DropdownMenuItem("Hal", id="dropdown-menu-item-2"),
    dbc.DropdownMenuItem(divider=True),
    dbc.DropdownMenuItem("Clear", id="dropdown-menu-item-clear"),
]


input_group = dbc.InputGroup(
    [
        dbc.DropdownMenu(
            dropdown_menu_items, label="Generate", addon_type="prepend"
        ),
        dbc.Input(id="input-group-dropdown-input", placeholder="name"),
    ]
)


@app.callback(
    Output("input-group-dropdown-input", "value"),
    [
        Input("dropdown-menu-item-1", "n_clicks"),
        Input("dropdown-menu-item-2", "n_clicks"),
        Input("dropdown-menu-item-clear", "n_clicks"),
    ],
)
def on_button_click(n1, n2, n_clear):
    ctx = dash.callback_context

    if not ctx.triggered:
        return ""
    else:
        button_id = ctx.triggered[0]["prop_id"].split(".")[0]

    if button_id == "dropdown-menu-item-clear":
        return ""
    elif button_id == "dropdown-menu-item-1":
        names = ["Arthur Dent", "Ford Prefect", "Trillian Astra"]
        which = n1 % len(names)
        return names[which]
    else:
        names = ["David Bowman", "Frank Poole", "Dr. Heywood Floyd"]
        which = n2 % len(names)
        return names[which]
