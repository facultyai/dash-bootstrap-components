PY_WRAPPER = """
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

{snippet}

app.layout = {name}
"""

R_WRAPPER = """
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

{snippet}

app$layout({name})
app$run_server()
"""
