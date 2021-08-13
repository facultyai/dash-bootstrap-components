using DashBootstrapComponents, DashHtmlComponents

tabs = html_div([
    dbc_tabs([
        dbc_tab(label="Tab 1", tab_style=Dict("marginLeft" => "auto")),
        dbc_tab(label="Tab 2", label_style=Dict("color" => "#00AEF9")),
    ]),
    html_br(),
    dbc_tabs([
        dbc_tab(label="Tab 1", tab_class_name="ml-auto"),
        dbc_tab(label="Tab 2", label_class_name="text-success"),
    ]),
]);
