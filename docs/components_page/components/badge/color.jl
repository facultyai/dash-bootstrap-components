using DashBootstrapComponents, DashHtmlComponents

coloured_badges = html_span([
    dbc_badge("Primary", color="primary", className="mr-1"),
    dbc_badge("Secondary", color="secondary", className="mr-1"),
    dbc_badge("Success", color="success", className="mr-1"),
    dbc_badge("Warning", color="warning", className="mr-1"),
    dbc_badge("Danger", color="danger", className="mr-1"),
    dbc_badge("Info", color="info", className="mr-1"),
    dbc_badge("Light", color="light", className="mr-1"),
    dbc_badge("Dark", color="dark"),
]);
