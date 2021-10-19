using DashBootstrapComponents, DashHtmlComponents

dropdown = html_div([
    dbc_dropdownmenu(
        [
            dbc_dropdownmenuitem("A button", id = "dropdown-button", n_clicks = 0),
            dbc_dropdownmenuitem("Internal link", href = "/docs/components/dropdown_menu"),
            dbc_dropdownmenuitem("External Link", href = "https://github.com"),
            dbc_dropdownmenuitem(
                "External relative",
                href = "/docs/components/dropdown_menu",
                external_link = true,
            ),
        ],
        label = "Menu",
    ),
    html_p(id = "item-clicks", className = "mt-3"),
]);

callback!(app, Output("item-clicks", "children"), Input("dropdown-button", "n_clicks")) do n
    return n > 0 ? "Button clicked $n times." : "Button not clicked yet."
end;
