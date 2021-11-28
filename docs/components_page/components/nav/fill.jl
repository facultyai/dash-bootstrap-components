using DashBootstrapComponents

nav_contents = [
    dbc_navitem(dbc_navlink("Active", href = "#", active = true)),
    dbc_navitem(dbc_navlink("A much longer link label", href = "#")),
    dbc_navitem(dbc_navlink("Link", href = "#")),
]

nav1 = dbc_nav(nav_contents, pills = true, fill = true);

nav2 = dbc_nav(nav_contents, pills = true, justified = true);

navs = html_div([nav1, html_hr(), nav2]);
