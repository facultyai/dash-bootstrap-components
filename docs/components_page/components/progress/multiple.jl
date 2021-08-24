using DashBootstrapComponents

progress = dbc_progress([
    dbc_progress(value = 20, color = "success", bar = true),
    dbc_progress(value = 30, color = "warning", bar = true),
    dbc_progress(value = 20, color = "danger", bar = true),
],);
