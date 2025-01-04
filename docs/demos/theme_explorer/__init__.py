import dash
import dash_bootstrap_components as dbc
from dash import Input, Output, State

from .accordion import accordion
from .alert import alerts
from .badge import badges
from .breadcrumb import breadcrumb
from .button import buttons
from .card import cards
from .collapse import collapse
from .dropdown_menu import dropdown_menu
from .fade import fade
from .form import form
from .input import checklist_items, input_, input_group, radio_items
from .list_group import list_group
from .modal import modal
from .nav import nav
from .navbar import navbar
from .offcanvas import offcanvas
from .pagination import pagination
from .placeholder import placeholder
from .popover import popover
from .progress import progress
from .spinner import spinner
from .table import table
from .tabs import tabs
from .toast import toast
from .tooltip import tooltip

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP, dbc.icons.FONT_AWESOME])

app.layout = dbc.Container(
    [
        accordion,
        alerts,
        badges,
        breadcrumb,
        buttons,
        cards,
        collapse,
        dropdown_menu,
        fade,
        dbc.Row(
            [
                dbc.Col([form, input_group], xs=12, md=6),
                dbc.Col([input_], xs=12, md=6),
            ]
        ),
        dbc.Row(
            [
                dbc.Col([checklist_items], xs=12, md=6),
                dbc.Col([radio_items], xs=12, md=6),
            ]
        ),
        list_group,
        modal,
        offcanvas,
        nav,
        navbar,
        pagination,
        placeholder,
        popover,
        progress,
        spinner,
        table,
        tabs,
        toast,
        tooltip,
    ],
    fluid=True,
    className="px-4",
)


@app.callback(
    Output("collapse", "is_open"),
    [Input("collapse-button", "n_clicks")],
    [State("collapse", "is_open")],
)
def toggle_collapse(n, is_open):
    if n:
        return not is_open
    return is_open


@app.callback(
    Output("fade", "is_in"),
    [Input("fade-button", "n_clicks")],
    [State("fade", "is_in")],
)
def toggle_fade(n, is_in):
    if n:
        return not is_in
    return is_in


@app.callback(
    Output("popover", "is_open"),
    [Input("popover-target", "n_clicks")],
    [State("popover", "is_open")],
)
def toggle_popover(n, is_open):
    if n:
        return not is_open
    return is_open


@app.callback(
    Output("modal", "is_open"),
    [Input("modal-button", "n_clicks")],
    [State("modal", "is_open")],
)
def toggle_modal(n, is_open):
    if n:
        return not is_open
    return is_open


@app.callback(
    Output("offcanvas", "is_open"),
    [Input("offcanvas-button", "n_clicks")],
    [State("offcanvas", "is_open")],
)
def toggle_offcanvas(n, is_open):
    if n:
        return not is_open
    return is_open


@app.callback(Output("auto-toast", "is_open"), [Input("auto-toast-toggle", "n_clicks")])
def open_toast(_):
    return True


if __name__ == "__main__":
    app.run_server(debug=True)
