using DashBootstrapComponents, DashHtmlComponents

buttons = html_div([
    dbc_button("Large button", size="lg", className="mr-1"),
    dbc_button("Regular button", className="mr-1"),
    dbc_button("Small button", size="sm"),
]);
