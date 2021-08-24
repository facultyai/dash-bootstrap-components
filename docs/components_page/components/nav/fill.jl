using DashBootstrapComponents, DashHtmlComponents

nav1 = dbc_nav(
    [
        dbc_navitem(dbc_navlink("A link", href = "#")),
        dbc_navitem(dbc_navlink("Another link with a longer label", href = "#")),
    ],
    fill = true,
);

nav2 = dbc_nav(
    [
        dbc_navitem(dbc_navlink("A link", href = "#")),
        dbc_navitem(dbc_navlink("Another link with a longer label", href = "#")),
    ],
    justified = true,
);

navs = html_div([nav1, html_hr(), nav2]);
