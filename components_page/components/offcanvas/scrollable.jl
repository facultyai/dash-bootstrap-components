using DashBootstrapComponents, DashHtmlComponents

offcanvas = html_div([
    dbc_button("Open scrollable offcanvas", id = "open-offcanvas-scrollable", n_clicks = 0),
    dbc_offcanvas(
        [
            html_div("The contents on the main page are now scrollable."),
            dbc_button(
                "Close",
                id = "close-offcanvas-scrollable",
                class_name = "ms-auto",
                n_clicks = 0,
            ),
        ],
        id = "offcanvas-scrollable",
        scrollable = true,
        title = "Scrollable Offcanvas",
    ),
])


callback!(
    app,
    Output("offcanvas-scrollable", "is_open"),
    Input("open-offcanvas-scrollable", "n_clicks"),
    Input("close-offcanvas-scrollable", "n_clicks"),
    State("offcanvas-scrollable", "is_open"),
) do n1, n2, is_open
    return n1 > 0 || n2 > 0 ? is_open == 0 : is_open
end;
