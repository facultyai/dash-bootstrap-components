using DashBootstrapComponents

tabs = html_div([
    dbc_tabs([
        dbc_tab(label = "tab 1", active_tab_style = Dict("textTransform" => "uppercase")),
        dbc_tab(label = "tab 2", active_label_style = Dict("color" => "#FB79B3")),
    ]),
    html_br(),
    dbc_tabs([
        dbc_tab(label = "Tab 1", activeTabClassName = "fw-bold fst-italic"),
        dbc_tab(label = "Tab 2", activeLabelClassName = "text-success"),
    ]),
]);
