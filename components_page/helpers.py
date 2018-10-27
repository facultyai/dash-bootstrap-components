import dash_html_components as html
import dash_core_components as dcc
from dash.development.base_component import js_to_py_type


def HighlightedSource(source):
    return html.Div(
        dcc.SyntaxHighlighter(
            source, language="python", useInlineStyles=False
        ),
        className="example-source-container",
    )


def ExampleContainer(component):
    return html.Div(component, className="example-container")


def load_source_with_app(app, source, component_name):
    """
    Execute a source snippet, injecting the `app` local variable.

    Return the local variable defined by `component_name`. This should
    be used for source files that need to register `@app` callbacks.
    """
    exec_namespace = {"app": app}
    exec(source, {}, exec_namespace)
    return exec_namespace[component_name]


def ApiDoc(component_metadata):
    return html.Div([
        html.H4("API reference", className="mt-5 mb-2"),
        ArgumentsList(component_metadata)
    ], className="api-documentation")


def ArgumentsList(component_metadata):
    props_metadata = component_metadata.get("props", {})
    arguments = []
    for name, metadata in props_metadata.items():
        arguments.append(Argument(name, metadata))
    return html.Ul(arguments, className="list-unstyled")


def Argument(argument_name, argument_metadata):
    description = argument_metadata.get("description", "")
    required = (
        ""
        if argument_metadata.get("required", False)
        else ", optional"
    )
    argument_type = argument_metadata.get("type", {})
    argument_type = js_to_py_type(argument_type)
    if argument_type is not None:
        type_string = f" ({argument_type}{required})"
    else:
        type_string = ""
    return html.Li([
        html.Code(argument_name), html.I(type_string), ": ",
        description
    ])
