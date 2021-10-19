using DashBootstrapComponents, DashHtmlComponents

offcanvas = html_div([
    dbc_button("Open Offcanvas", id = "open-offcanvas", n_clicks = 0),
    dbc_offcanvas(
        html_p(
            "This is the content of the Offcanvas. " *
            "Close it by clicking on the close button, or " *
            "the backdrop.",
        ),
        id = "offcanvas",
        title = "Title",
        is_open = false,
    ),
]);


callback!(
    app,
    Output("offcanvas", "is_open"),
    Input("open-offcanvas", "n_clicks"),
    State("offcanvas", "is_open"),
) do n1, is_open
    return n1 > 0 ? is_open == 0 : is_open
end;
