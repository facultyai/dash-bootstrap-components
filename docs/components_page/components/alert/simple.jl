using DashBootstrapComponents

alerts = html_div([
    dbc_alert("This is a primary alert", color = "primary"),
    dbc_alert("This is a secondary alert", color = "secondary"),
    dbc_alert("This is a success alert! Well done!", color = "success"),
    dbc_alert("This is a warning alert... be careful...", color = "warning"),
    dbc_alert("This is a danger alert. Scary!", color = "danger"),
    dbc_alert("This is an info alert. Good to know!", color = "info"),
    dbc_alert("This is a light alert", color = "light"),
    dbc_alert("This is a dark alert", color = "dark"),
]);
