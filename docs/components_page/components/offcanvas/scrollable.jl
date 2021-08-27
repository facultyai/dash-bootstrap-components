using DashBootstrapComponents, DashHtmlComponents

offcanvas = html_div([
    dbc_button("Open scrollable offcanvas", id = "open-offcanvas-scrollable", n_clicks = 0),
    dbc_offcanvas(
        html_p("The contents on the main page are now scrollable."),
        id = "offcanvas-scrollable",
        scrollable = true,
        title = "Scrollable Offcanvas",
        is_open = false,
    ),
])


callback!(
    app,
    Output("offcanvas-scrollable", "is_open"),
    Input("open-offcanvas-scrollable", "n_clicks"),
    State("offcanvas-scrollable", "is_open"),
) do n1, is_open
    return n1 > 0 ? is_open == 0 : is_open
end;
