using DashBootstrapComponents
using DashHtmlComponents

button = html_div(
    [
        dbc_button("Block button", color = "primary"),
        dbc_button("Block button", color = "secondary"),
    ],
    className = "d-grid gap-2 col-6 mx-auto",
);
