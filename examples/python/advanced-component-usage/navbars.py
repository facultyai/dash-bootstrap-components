"""
A simple app demonstrating how to manually construct a navbar with a customised
layout using the Navbar component and the supporting Nav, NavItem, NavLink,
NavbarBrand, and NavbarToggler components.

Requires dash-bootstrap-components 0.3.0 or later
"""
import dash
import dash_bootstrap_components as dbc
import dash_html_components as html
from dash.dependencies import Input, Output, State

PLOTLY_LOGO = "https://images.plot.ly/logo/new-branding/plotly-logomark.png"

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])
# try running the app with one of the Bootswatch themes e.g.
# app = dash.Dash(external_stylesheets=[dbc.themes.JOURNAL])
# app = dash.Dash(external_stylesheets=[dbc.themes.SKETCHY])

# make a reuseable navitem for the different examples
nav_item = dbc.NavItem(dbc.NavLink("Link", href="#"))

# make a reuseable dropdown for the different examples
dropdown = dbc.DropdownMenu(
    children=[
        dbc.DropdownMenuItem("Entry 1"),
        dbc.DropdownMenuItem("Entry 2"),
        dbc.DropdownMenuItem(divider=True),
        dbc.DropdownMenuItem("Entry 3"),
    ],
    nav=True,
    in_navbar=True,
    label="Menu",
)

# this is the default navbar style created by the NavbarSimple component
default = dbc.NavbarSimple(
    children=[nav_item, dropdown],
    brand="Default",
    brand_href="#",
    sticky="top",
    className="mb-5",
)

# here's how you can recreate the same thing using Navbar
# (see also required callback at the end of the file)
custom_default = dbc.Navbar(
    dbc.Container(
        [
            dbc.NavbarBrand("Custom default", href="#"),
            dbc.NavbarToggler(id="navbar-toggler1"),
            dbc.Collapse(
                dbc.Nav(
                    [nav_item, dropdown], className="ml-auto", navbar=True
                ),
                id="navbar-collapse1",
                navbar=True,
            ),
        ]
    ),
    className="mb-5",
)


# this example that adds a logo to the navbar brand
logo = dbc.Navbar(
    dbc.Container(
        [
            html.A(
                # Use row and col to control vertical alignment of logo / brand
                dbc.Row(
                    [
                        dbc.Col(html.Img(src=PLOTLY_LOGO, height="30px")),
                        dbc.Col(dbc.NavbarBrand("Logo", className="ml-2")),
                    ],
                    align="center",
                    no_gutters=True,
                ),
                href="https://plot.ly",
            ),
            dbc.NavbarToggler(id="navbar-toggler2"),
            dbc.Collapse(
                dbc.Nav(
                    [nav_item, dropdown], className="ml-auto", navbar=True
                ),
                id="navbar-collapse2",
                navbar=True,
            ),
        ]
    ),
    color="dark",
    dark=True,
    className="mb-5",
)

# this example has a search bar and button instead of navitems / dropdowns
search_navbar = dbc.Navbar(
    dbc.Container(
        [
            dbc.NavbarBrand("Search", href="#"),
            dbc.NavbarToggler(id="navbar-toggler3"),
            dbc.Collapse(
                dbc.Row(
                    [
                        dbc.Col(
                            dbc.Input(type="search", placeholder="Search")
                        ),
                        dbc.Col(
                            dbc.Button(
                                "Search", color="primary", className="ml-2"
                            ),
                            # set width of button column to auto to allow
                            # search box to take up remaining space.
                            width="auto",
                        ),
                    ],
                    no_gutters=True,
                    # add a top margin to make things look nice when the navbar
                    # isn't expanded (mt-3) remove the margin on medium or
                    # larger screens (mt-md-0) when the navbar is expanded.
                    # keep button and search box on same row (flex-nowrap).
                    # align everything on the right with left margin (ml-auto).
                    className="ml-auto flex-nowrap mt-3 mt-md-0",
                    align="center",
                ),
                id="navbar-collapse3",
                navbar=True,
            ),
        ]
    ),
    className="mb-5",
)

# custom navbar based on https://getbootstrap.com/docs/4.1/examples/dashboard/
dashboard = dbc.Navbar(
    [
        dbc.Col(dbc.NavbarBrand("Dashboard", href="#"), sm=3, md=2),
        dbc.Col(dbc.Input(type="search", placeholder="Search here")),
        dbc.Col(
            dbc.Nav(dbc.NavItem(dbc.NavLink("Sign out")), navbar=True),
            width="auto",
        ),
    ],
    color="dark",
    dark=True,
)

app.layout = html.Div(
    [default, custom_default, logo, search_navbar, dashboard]
)


# we use a callback to toggle the collapse on small screens
def toggle_navbar_collapse(n, is_open):
    if n:
        return not is_open
    return is_open


# the same function (toggle_navbar_collapse) is used in all three callbacks
for i in [1, 2, 3]:
    app.callback(
        Output(f"navbar-collapse{i}", "is_open"),
        [Input(f"navbar-toggler{i}", "n_clicks")],
        [State(f"navbar-collapse{i}", "is_open")],
    )(toggle_navbar_collapse)

if __name__ == "__main__":
    app.run_server(debug=True, port=8888)
