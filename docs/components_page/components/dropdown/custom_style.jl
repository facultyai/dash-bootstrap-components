using DashBootstrapComponents

dropdown = dbc_dropdownmenu(
    [
        dbc_dropdownmenuitem("Item 1"),
        dbc_dropdownmenuitem("Item 2"),
        dbc_dropdownmenuitem("Item 3"),
    ],
    label = "Custom",
    className = "m-1",
    toggle_style = Dict("textTransform" => "uppercase", "background" => "#FB79B3"),
    toggleClassName = "fst-italic border border-dark",
)
