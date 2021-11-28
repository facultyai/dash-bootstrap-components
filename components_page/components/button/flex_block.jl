using DashBootstrapComponents

button = html_div(
    [
        dbc_button("Button 1", className = "me-md-2"),
        dbc_button("Button 2", className = "me-md-2"),
        dbc_button("Button 3"),
    ],
    className = "d-grid gap-2 d-md-flex justify-content-md-end",
);
