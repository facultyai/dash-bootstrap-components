using DashBootstrapComponents, DashHtmlComponents

tabs = html_div([
    dbc_tabs(
        [
            dbc_tab(label = "Tab 1", tab_id = "tab-1"),
            dbc_tab(label = "Tab 2", tab_id = "tab-2"),
        ],
        id = "tabs",
        active_tab = "tab-1",
    ),
    html_div(id = "content"),
]);

callback!(app, Output("content", "children"), Input("tabs", "active_tab")) do at
    if at == "tab-1"
        return tab1_content
    elseif at == "tab-2"
        return tab2_content
    else
        return html_p("This shouldn't ever be displayed...")
    end
end;
