using DashBootstrapComponents, DashHtmlComponents

buttons = html_div([
    dbc_button("Primary", color="primary", class_namee="mr-1"),
    dbc_button("Secondary", color="secondary", class_namee="mr-1"),
    dbc_button("Success", color="success", class_namee="mr-1"),
    dbc_button("Warning", color="warning", class_namee="mr-1"),
    dbc_button("Danger", color="danger", class_namee="mr-1"),
    dbc_button("Info", color="info", class_namee="mr-1"),
    dbc_button("Light", color="light", class_namee="mr-1"),
    dbc_button("Dark", color="dark", class_namee="mr-1"),
    dbc_button("Link", color="link"),
]);
