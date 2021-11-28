using DashBootstrapComponents

card = dbc_card([
    dbc_cardheader(
        dbc_tabs(
            [
                dbc_tab(label = "Tab 1", tab_id = "tab-1"),
                dbc_tab(label = "Tab 2", tab_id = "tab-2"),
            ],
            id = "card-tabs",
            active_tab = "tab-1",
        ),
    ),
    dbc_cardbody(html_p(id = "card-content", className = "card-text")),
]);

callback!(
    app,
    Output("card-content", "children"),
    Input("card-tabs", "active_tab"),
) do active_tab
    return "This is tab $active_tab"
end;
