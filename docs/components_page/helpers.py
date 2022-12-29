import dash_bootstrap_components as dbc
from dash import dcc, html


def HighlightedSource(py_source, r_source, jl_source, className="px-3"):
    return dbc.Tabs(
        [
            dbc.Tab(
                dcc.Markdown(f"```{lang}\n{source}\n```", className="m-3"),
                label=lang.capitalize(),
                className="example-source",
            )
            for lang, source in [
                ("python", py_source),
                ("r", r_source),
                ("julia", jl_source),
            ]
            if source is not None
        ],
        className=className,
    )


def ExampleContainer(component, py_source, r_source, jl_source):
    return html.Div(
        [
            html.Div(component, className="example"),
            HighlightedSource(py_source, r_source, jl_source),
        ],
        className="example-container",
    )


def load_source_with_environment(source, component_name, environment=None):
    """
    Execute a source snippet, injecting the variables specified in environment

    Return the local variable defined by `component_name`. This should be used
    for source files that need to register `@app` callbacks. In this case, be
    sure to pass app in the environment.
    """
    environment = environment or {}
    exec(source, environment)
    return environment[component_name]
