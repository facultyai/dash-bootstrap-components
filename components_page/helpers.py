import dash_core_components as dcc
import dash_html_components as html


def HighlightedSource(source):
    return html.Div(
        dcc.Markdown(f"```python\n{source}\n```"),
        className="example-source-container",
    )


def ExampleContainer(component):
    return html.Div(component, className="example-container")


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
