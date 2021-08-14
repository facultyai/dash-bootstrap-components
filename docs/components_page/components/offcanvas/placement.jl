using DashBootstrapComponents, DashHtmlComponents

offcanvas = html_div(
    [
        dbc_button(
            "Open Offcanvas",
            id="open-offcanvas-placement",
            n_clicks=0,
            class_name="m-2",
        ),
        dbc_offcanvas(
            [
                dbc_offcanvasheader(title="Placement"),
                dbc_offcanvasbody(
                    [
                        html_div(
                            "Change the placement of this offcanvas with the "
                            "options below"
                        ),
                        dbc_formgroup(
                            # FIXME: Fix styling here
                            [
                                dbc_inputgroupaddon(
                                    "Placement", addon_type="prepend"
                                ),
                                dbc_select(
                                    id="offcanvas-placement-selector",
                                    options=[
                                        Dict(
                                            "label" => "start (Default)",
                                            "value" => "start",
                                        ),
                                        Dict(
                                            "label" => "end", 
                                            "value" => "end"
                                        ),
                                        Dict(
                                            "label" => "top",
                                            "value" => "top",
                                        ),
                                        Dict(
                                            "label" => "bottom", 
                                            "value" => "bottom"
                                        ),
                                    ],
                                    value="start",
                                ),
                            ],
                            class_name="p-3 m-2 border",
                        ),
                    ]
                ),
            ],
            id="offcanvas-placement",
            is_open=false,
            placement="start",
        ),
    ]
)


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
