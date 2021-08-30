using DashBootstrapComponents
using DashHtmlComponents

button = html_div(
    [
        dbc_button("Button 1", class_name="me-md-2"),
        dbc_button("Button 2", class_name="me-md-2"),
        dbc_button("Button 3"),
    ],
    class_name="d-grid gap-2 d-md-flex justify-content-md-end",
);
