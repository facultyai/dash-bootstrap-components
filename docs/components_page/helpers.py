import dash_core_components as dcc
import dash_html_components as html


def HighlightedSource(source):
    return html.Div(
        dcc.SyntaxHighlighter(
            source, language="python", useInlineStyles=False
        ),
        className="example-source-container",
    )


def ExampleContainer(component):
    return html.Div(component, className="example-container")


def load_source_with_locals(source, component_name, globals_dict=None):
    """
    Execute a source snippet, injecting the variables specified in globals_dict

    Return the local variable defined by `component_name`. This should be used
    for source files that need to register `@app` callbacks. In this case, be
    sure to pass app in globals_dict.
    """
    exec_namespace = {}
    exec(source, globals_dict or {}, exec_namespace)
    return exec_namespace[component_name]
