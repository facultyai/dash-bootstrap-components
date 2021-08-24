using DashBootstrapComponents

progress = dbc_progress(
    [
        dbc_progress(value=20, color="success"),
        dbc_progress(value=30, color="warning"),
        dbc_progress(value=20, color="danger"),
    ],
);
