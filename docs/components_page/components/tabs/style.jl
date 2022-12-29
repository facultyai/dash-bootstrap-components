using DashBootstrapComponents

tabs = html_div([
    dbc_tabs([
        dbc_tab(label = "Tab 1", tab_style = Dict("marginLeft" => "auto")),
        dbc_tab(label = "Tab 2", label_style = Dict("color" => "#00AEF9")),
    ]),
    html_br(),
    dbc_tabs([
        dbc_tab(label = "Tab 1", tabClassName = "ms-auto"),
        dbc_tab(label = "Tab 2", labelClassName = "text-success"),
    ]),
]);
