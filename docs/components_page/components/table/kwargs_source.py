import dash_bootstrap_components as dbc

from .simple import table as simple_table

table = dbc.Table(
    simple_table.children[1].children,
    bordered=True,
    dark=True,
    hover=True,
    responsive=True,
    striped=True,
)
