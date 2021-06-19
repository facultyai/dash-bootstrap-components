using DashBootstrapComponents, DashHtmlComponents

outline_buttons = html_div([
    dbc_button("Primary", outline=true, color="primary", className="mr-1"),
    dbc_button("Secondary", outline=true, color="secondary", className="mr-1"),
    dbc_button("Success", outline=true, color="success", className="mr-1"),
    dbc_button("Warning", outline=true, color="warning", className="mr-1"),
    dbc_button("Danger", outline=true, color="danger", className="mr-1"),
    dbc_button("Info", outline=true, color="info", className="mr-1"),
    dbc_button("Light", outline=true, color="light", className="mr-1"),
    dbc_button("Dark", outline=true, color="dark"),
]);
