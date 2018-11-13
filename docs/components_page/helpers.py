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


def load_source_with_app(
    app, source, component_name, globals_dict=None, locals_dict=None
):
    """
    Execute a source snippet, injecting the `app` local variable.

    Return the local variable defined by `component_name`. This should
    be used for source files that need to register `@app` callbacks.
    """
    globals_dict = globals_dict if isinstance(globals_dict, dict) else {}
    exec_namespace = {"app": app}
    if isinstance(locals_dict, dict):
        exec_namespace.update(locals_dict)
    exec(source, globals_dict, exec_namespace)
    return exec_namespace[component_name]
