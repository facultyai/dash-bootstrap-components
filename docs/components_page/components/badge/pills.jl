using DashBootstrapComponents, DashHtmlComponents

badges = html_span([
    dbc_badge("Primary", pill=true, color="primary", class_name="mr-1"),
    dbc_badge("Secondary", pill=true, color="secondary", class_name="mr-1"),
    dbc_badge("Success", pill=true, color="success", class_name="mr-1"),
    dbc_badge("Warning", pill=true, color="warning", class_name="mr-1"),
    dbc_badge("Danger", pill=true, color="danger", class_name="mr-1"),
    dbc_badge("Info", pill=true, color="info", class_name="mr-1"),
    dbc_badge("Light", pill=true, color="light", class_name="mr-1"),
    dbc_badge("Dark", pill=true, color="dark"),
]);
