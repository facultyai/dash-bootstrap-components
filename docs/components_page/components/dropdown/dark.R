library(dashBootstrapComponents)

dropdown <- dbc.DropdownMenu(
    label="Menu",
    menu_variant="dark",
    children=list(
        dbc.DropdownMenuItem("Item 1"),
        dbc.DropdownMenuItem("Item 2"),
        dbc.DropdownMenuItem("Item 3")
    )
)
