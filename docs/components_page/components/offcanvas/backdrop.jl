using DashBootstrapComponents, DashHtmlComponents

backdrop_selector = dbc_radioitems(
    id = "offcanvas-backdrop-selector",
    options = [
        Dict("label" => "True (default)", "value" => true),
        Dict("label" => "False", "value" => false),
        Dict("label" => "Static (no dismiss)", "value" => "static"),
    ],
    inline = true,
    value = true,
)

offcanvas = html_div([
    dbc_button("Open backdrop offcanvas", id = "open-offcanvas-backdrop", n_clicks = 0),
    dbc_offcanvas(
        [
            html_p(
                "Change the backdrop of this offcanvas with the radio buttons",
                class_name = "mb-3",
            ),
            backdrop_selector,
        ],
        id = "offcanvas-backdrop",
        title = "Offcanvas with/without backdrop",
        is_open = false,
    ),
])


callback!(
    app,
    Output("offcanvas-backdrop", "backdrop"),
    Input("offcanvas-backdrop-selector", "value"),
) do backdrop
    return backdrop
end;


callback!(
    app,
    Output("offcanvas-backdrop", "is_open"),
    Input("open-offcanvas-backdrop", "n_clicks"),
    State("offcanvas-backdrop", "is_open"),
) do n1, is_open
    return n1 > 0 ? is_open == 0 : is_open
end;
