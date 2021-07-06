using DashBootstrapComponents, DashHtmlComponents

badges = html_span([
    dbc_badge("Primary", pill=true, color="primary", className="mr-1"),
    dbc_badge("Secondary", pill=true, color="secondary", className="mr-1"),
    dbc_badge("Success", pill=true, color="success", className="mr-1"),
    dbc_badge("Warning", pill=true, color="warning", className="mr-1"),
    dbc_badge("Danger", pill=true, color="danger", className="mr-1"),
    dbc_badge("Info", pill=true, color="info", className="mr-1"),
    dbc_badge("Light", pill=true, color="light", className="mr-1"),
    dbc_badge("Dark", pill=true, color="dark"),
]);
