from itertools import chain

import dash_html_components as html
from dash.development.base_component import (
    filter_props,
    js_to_py_type,
    parse_events,
    reorder_props,
)


def ApiDoc(component_metadata, component_name=None):
    component_props = component_metadata.get("props", {})
    return html.Div(
        ArgumentsList(component_props, component_name)
        + EventsList(component_props),
        className="api-documentation",
    )


def ArgumentsList(component_props, component_name):
    if component_name is not None:
        heading = f"Keyword arguments for {component_name}"
    else:
        heading = "Keyword arguments"
    component_props = reorder_props(filter_props(component_props))
    arguments = []
    for name, metadata in component_props.items():
        arguments.append(Argument(name, metadata))
    if not arguments:
        return []
    return [
        html.H4(heading, className="mt-5 mb-2"),
        html.Ul(arguments, className="list-unstyled"),
    ]


def Argument(argument_name, argument_metadata):
    description = argument_metadata.get("description", "")
    required = "" if argument_metadata.get("required", False) else ", optional"
    argument_type = argument_metadata.get("type", {})
    argument_type = js_to_py_type(argument_type)
    if argument_type is not None:
        type_string = f" ({argument_type}{required})"
    else:
        type_string = ""
    return html.Li(
        [html.Code(argument_name), html.I(type_string), ": ", description]
    )


def EventsList(component_props):
    events = parse_events(component_props)
    if not events:
        return []
    else:
        event_components = [Event(event) for event in events]
        events_list = list(
            chain.from_iterable(
                [(component, " ") for component in event_components]
            )
        )
        return [
            html.H4("Available events", className="mt-5 mb-2")
        ] + events_list


def Event(event):
    return html.Code(event.lstrip("'").rstrip("'"))
