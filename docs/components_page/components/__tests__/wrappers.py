PY_WRAPPER = """
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

{snippet}

app.layout = html.Div([{components}])
"""

R_WRAPPER = """
library(dash)
library(dashBootstrapComponents)
library(dashHtmlComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

{snippet}

app$layout(htmlDiv(list({components})))
app$run_server()
"""

JL_WRAPPER = """
using Dash, DashBootstrapComponents

app = dash(external_stylesheets=[dbc_themes.BOOTSTRAP]);

{snippet};

app.layout = html_div([{components}]);
run_server(app, debug = false);
"""
