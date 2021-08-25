using DashBootstrapComponents, DashHtmlComponents

placement_selector = dbc_radioitems(
    id = "offcanvas-placement-selector",
    options = [
        Dict("label" => "start (Default)", "value" => "start"),
        Dict("label" => "end", "value" => "end"),
        Dict("label" => "top", "value" => "top"),
        Dict("label" => "bottom", "value" => "bottom"),
    ],
    value = "start",
)

offcanvas = html_div([
    dbc_button(
        "Open Offcanvas",
        id = "open-offcanvas-placement",
        n_clicks = 0,
        class_name = "m-2",
    ),
    dbc_offcanvas(
        [
            html_p(
                "Change the placement of this offcanvas with the options below",
                class_name = "mb-3",
            ),
            placement_selector,
        ],
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
