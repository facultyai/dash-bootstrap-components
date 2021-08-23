using DashBootstrapComponents, DashHtmlComponents

backdrop_selector = html_div(
    [
        dbc_radioitems(
            id="offcanvas-backdrop-selector",
            options=[
                Dict("label"=> "True (default)", "value"=> true),
                Dict("label"=> "False", "value"=> false),
                Dict("label"=> "Static (no dismiss)", "value"=> "static"),
            ],
            inline=true,
            value=true,
        ),
    ],
    class_name="p-3 m-2 border",
)

offcanvas = html_div(
    [
        dbc_button(
            "Open backdrop offcanvas", id="open-offcanvas-backdrop", n_clicks=0
        ),
        dbc_offcanvas(
            [
                html_div(
                    "Change the backdrop of this offcanvas with the " *
                    "radio buttons"
                ),
                backdrop_selector,
                dbc_button(
                    "Close",
                    id="close-offcanvas-backdrop",
                    class_name="ms-auto",
                    n_clicks=0,
                ),
            ],
            id="offcanvas-backdrop",
            title="Offcanvas with/without backdrop",
        ),
    ]
)


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
    Input("close-offcanvas-backdrop", "n_clicks"),
    State("offcanvas-backdrop", "is_open"),
) do n1, n2, is_open
    return n1 > 0 || n2 > 0 ? is_open == 0 : is_open
end;
