using DashBootstrapComponents, DashHtmlComponents

button = html_div([
    dbc_button(
        "Download",
        href = "/static/data_file.txt",
        download = "my_data.txt",
        external_link = true,
        color = "primary",
    ),
])
