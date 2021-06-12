using DashBootstrapComponents, DashHtmlComponents

PLOTLY_LOGO = "https://images.plot.ly/logo/new-branding/plotly-logomark.png"

search_bar = dbc_row(
    [
        dbc_col(dbc_input(type = "search", placeholder = "Search")),
        dbc_col(
            dbc_button("Search", color = "primary", className = "ml-2", n_clicks = 0),
            width = "auto",
        ),
    ],
    no_gutters = true,
    className = "ml-auto flex-nowrap mt-3 mt-md-0",
    align = "center",
)

navbar = dbc_navbar(
    [
        html_a(
            # Use row and col to control vertical alignment of logo / brand
            dbc_row(
                [
                    dbc_col(html_img(src = PLOTLY_LOGO, height = "30px")),
                    dbc_col(dbc_navbarbrand("Navbar", className = "ml-2")),
                ],
                align = "center",
                no_gutters = true,
            ),
            href = "https://plotly.com",
        ),
        dbc_navbartoggler(id = "navbar-toggler", n_clicks = 0),
        dbc_collapse(search_bar, id = "navbar-collapse", navbar = true, is_open = false),
    ],
    color = "dark",
    dark = true,
)


# add callback for toggling the collapse on small screens
callback!(
    app,
    Output("navbar-collapse", "is_open"),
    Input("navbar-toggler", "n_clicks"),
    State("navbar-collapse", "is_open"),
) do n, is_open
    return n > 0 ? is_open == 0 : is_open
end
