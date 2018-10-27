from itertools import chain

import dash_html_components as html
import dash_core_components as dcc
from dash.development.base_component import js_to_py_type, reorder_props, filter_props, parse_events


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
    component_props = component_metadata.get("props", {})
    return html.Div(
        ArgumentsList(component_props) + EventsList(component_props),
        className="api-documentation"
    )


def ArgumentsList(component_props):
    component_props = reorder_props(
        filter_props(
            component_props
        )
    )
    arguments = []
    for name, metadata in component_props.items():
        arguments.append(Argument(name, metadata))
    if not arguments:
        return []
    return [
        html.H4("Keyword arguments", className="mt-5 mb-2"),
        html.Ul(arguments, className="list-unstyled")
    ]


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


def EventsList(component_props):
    events = parse_events(component_props)
    if not events:
        return []
    else:
        event_components = [Event(event) for event in events]
        events_list = list(
            chain.from_iterable([
            (component, " ") for component in event_components
        ]))
        return [html.H4("Available events", className="mt-5 mb-2")] + events_list


def Event(event):
    return html.Code(event.lstrip("'").rstrip("'"))
