import os

import dash
import dash_bootstrap_components as dbc

from .theme_explorer import app as theme_explorer

SERVE_LOCALLY = os.getenv("DBC_DOCS_MODE", "production") == "dev"
FA = "https://use.fontawesome.com/releases/v5.15.3/css/all.css"

SHEETS = [
    ("bootstrap", dbc.themes.BOOTSTRAP),
    ("cerulean", dbc.themes.CERULEAN),
    ("cosmo", dbc.themes.COSMO),
    ("cyborg", dbc.themes.CYBORG),
    ("darkly", dbc.themes.DARKLY),
    ("flatly", dbc.themes.FLATLY),
    ("journal", dbc.themes.JOURNAL),
    ("litera", dbc.themes.LITERA),
    ("lumen", dbc.themes.LUMEN),
    ("lux", dbc.themes.LUX),
    ("materia", dbc.themes.MATERIA),
    ("minty", dbc.themes.MINTY),
    ("morph", dbc.themes.MORPH),
    ("pulse", dbc.themes.PULSE),
    ("quartz", dbc.themes.QUARTZ),
    ("sandstone", dbc.themes.SANDSTONE),
    ("simplex", dbc.themes.SIMPLEX),
    ("sketchy", dbc.themes.SKETCHY),
    ("slate", dbc.themes.SLATE),
    ("solar", dbc.themes.SOLAR),
    ("spacelab", dbc.themes.SPACELAB),
    ("superhero", dbc.themes.SUPERHERO),
    ("united", dbc.themes.UNITED),
    ("vapor", dbc.themes.VAPOR),
    ("yeti", dbc.themes.YETI),
    ("zephyr", dbc.themes.ZEPHYR),
]


def register_apps():
    apps = {}

    for name, sheet in SHEETS:
        new_theme_explorer = dash.Dash(
            external_stylesheets=[FA, sheet, "/static/loading.css"],
            requests_pathname_prefix=f"/docs/themes/explorer/{name}/",
            suppress_callback_exceptions=True,
            serve_locally=SERVE_LOCALLY,
            update_title=None,
        )

        new_theme_explorer.title = f"Theme explorer - {name} - dbc docs"
        new_theme_explorer.layout = theme_explorer.layout
        new_theme_explorer.callback_map = theme_explorer.callback_map
        new_theme_explorer._callback_list = theme_explorer._callback_list
        apps[f"/docs/themes/explorer/{name}"] = new_theme_explorer

    return apps
