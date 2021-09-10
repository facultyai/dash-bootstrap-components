using DashBootstrapComponents, DashHtmlComponents

placement_selector = html_div(
    [
        dbc_label("Placement:"),
        dbc_radioitems(
            id = "offcanvas-placement-selector",
            options = [
                Dict("label" => "start (Default)", "value" => "start"),
                Dict("label" => "end", "value" => "end"),
                Dict("label" => "top", "value" => "top"),
                Dict("label" => "bottom", "value" => "bottom"),
            ],
            value = "start",
            inline = true,
        ),
    ],
    className = "mb-2",
)

offcanvas = html_div([
    placement_selector,
    dbc_button("Open Offcanvas", id = "open-offcanvas-placement", n_clicks = 0),
    dbc_offcanvas(
        html_p("Some offcanvas content..."),
        id = "offcanvas-placement",
        title = "Placement",
        is_open = false,
    ),
])


callback!(
    app,
    Output("offcanvas-placement", "is_open"),
    Input("open-offcanvas-placement", "n_clicks"),
    State("offcanvas-placement", "is_open"),
) do n1, is_open
    return n1 > 0 ? is_open == 0 : is_open
end;


callback!(
    app,
    Output("offcanvas-placement", "placement"),
    Input("offcanvas-placement-selector", "value"),
) do placement
    return placement
end;
