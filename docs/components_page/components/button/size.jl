using DashBootstrapComponents, DashHtmlComponents

buttons = html_div([
    dbc_button("Large button", size="lg", class_name="mr-1"),
    dbc_button("Regular button", class_name="mr-1"),
    dbc_button("Small button", size="sm"),
]);
