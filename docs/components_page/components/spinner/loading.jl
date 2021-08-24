using DashBootstrapComponents, DashHtmlComponents

loading_spinner = html_div([
    dbc_button("Load", id = "loading-button", n_clicks = 0),
    dbc_spinner(html_div(id = "loading-output")),
]);

callback!(
    app,
    Output("loading-output", "children"),
    Input("loading-button", "n_clicks"),
) do n

    if n > 0
        sleep(1)
        return "Output loaded $n times"
    else
        return "Output not reloaded yet"
    end

end;
