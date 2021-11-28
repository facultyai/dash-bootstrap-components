using DashBootstrapComponents

progress = html_div([
    dcc_interval(id = "progress-interval", n_intervals = 0, interval = 500),
    dbc_progress(id = "progress"),
]);


callback!(
    app,
    Output("progress", "value"),
    Output("progress", "label"),
    Input("progress-interval", "n_intervals"),
) do n
    # check progress of some background process, in this example we'll just
    # use n_intervals constrained to be in 0-100
    progress = min(n % 110, 100)
    # only add text after 5% progress to ensure text isn't squashed too much
    return progress >= 5 ? (progress, "$progress %") : (progress, "")
end;
