using DashBootstrapComponents, DashHtmlComponents

modal = html_div([
    dbc_formgroup([
        dbc_label("Backdrop:"),
        dbc_radioitems(
            id="backdrop-selector",
            options=[
                Dict("label" => "True (default)", "value" => true),
                Dict("label" => "False", "value" => false),
                Dict("label" => "'static'", "value" => "static"),
            ],
            inline=true,
            value=true,
        ),
    ]),
    dbc_button("Open modal", id="open-backdrop", n_clicks=0),
    dbc_modal(
        [
            dbc_modalheader("Header"),
            dbc_modalbody("Change the backdrop of this modal with the radio buttons"),
            dbc_modalfooter(
                dbc_button(
                    "Close",
                    id="close-backdrop",
                    class_name="ms-auto",
                    n_clicks=0,
                ),
            ),
        ],
        id="modal-backdrop",
        is_open=false,
    ),
]);

callback!(
    app,
    Output("modal-backdrop", "backdrop"),
    Input("backdrop-selector", "value"),
) do backdrop
    return backdrop
end;


callback!(
    app,
    Output("modal-backdrop", "is_open"),
    Input("open-backdrop", "n_clicks"),
    Input("close-backdrop", "n_clicks"),
    State("modal-backdrop", "is_open"),
) do n1, n2, is_open
    return n1 > 0 || n2 > 0 ? is_open == 0 : is_open
end;
