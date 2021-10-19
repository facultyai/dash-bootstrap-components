using DashBootstrapComponents

nav = dbc_nav([
    dbc_navlink("Active", active = true, href = "#"),
    dbc_navlink("A link", href = "#"),
    dbc_navlink("Another link", href = "#"),
    dbc_navlink("Disabled", disabled = true, href = "#"),
]);
