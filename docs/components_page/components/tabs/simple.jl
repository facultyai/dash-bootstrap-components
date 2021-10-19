using DashBootstrapComponents, DashHtmlComponents

tab1_content = dbc_card(
    dbc_cardbody([
        html_p("This is tab 1!", className = "card-text"),
        dbc_button("Click here", color = "success"),
    ]),
    className = "mt-3",
);

tab2_content = dbc_card(
    dbc_cardbody([
        html_p("This is tab 2!", className = "card-text"),
        dbc_button("Don't click here", color = "danger"),
    ]),
    className = "mt-3",
);


tabs = dbc_tabs([
    dbc_tab(tab1_content, label = "Tab 1"),
    dbc_tab(tab2_content, label = "Tab 2"),
    dbc_tab("This tab's content is never seen", label = "Tab 3", disabled = true),
]);
