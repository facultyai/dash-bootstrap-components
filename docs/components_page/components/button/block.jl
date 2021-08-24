using DashBootstrapComponents
using DashHtmlComponents

button = html_div(
    [
        dbc_button("Block button", color = "primary"),
        dbc_button("Block button", color = "secondary"),
    ],
    class_name = "d-grid gap-2",
);
