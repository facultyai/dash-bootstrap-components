import dash_bootstrap_components as dbc
import dash_core_components as dcc
import dash_html_components as html


def HighlightedSource(py_source, r_source, jl_source):
    return dbc.Tabs(
        [
            dbc.Tab(
                dcc.Markdown(f"```{lang}\n{source}\n```", class_name="m-3"),
                label=lang.capitalize(),
                class_name="example-source",
            )
            for lang, source in [
                ("python", py_source),
                ("r", r_source),
                ("julia", jl_source),
            ]
            if source is not None
        ],
        class_name="px-3",
    )


def ExampleContainer(component, py_source, r_source, jl_source):
    return html.Div(
        [
            html.Div(component, class_name="example"),
            HighlightedSource(py_source, r_source, jl_source),
        ],
        class_name="example-container",
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
