from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import (
    ExampleContainer,
    HighlightedSource,
    load_source_with_environment,
)
from ...metadata import get_component_metadata
from .simple import toast as toast_simple

HERE = Path(__file__).parent

toast_simple_source = (HERE / "simple.py").read_text()
toast_icon_dismiss_source = (HERE / "icon_dismiss.py").read_text()
toast_auto_dismiss_source = (HERE / "auto_dismiss.py").read_text()
toast_position_source = (HERE / "position.py").read_text()


def get_content(app):
    return [
        html.H2("Toasts", className="display-4"),
        html.P(
            "Push notifications to your visitors with a toast, a lightweight "
            "and easily customisable alert message",
            className="lead",
        ),
        html.P(
            dcc.Markdown(
                "Toasts are lightweight notifications designed to mimic the "
                "push notifications popularized by mobile and desktop "
                "operating systems."
            )
        ),
        html.H4("Simple example"),
        html.P(
            dcc.Markdown(
                "The `Toast` component automatically creates a header and "
                "body, the children of the component populate the body, while "
                "the `header` property can be used to set the header text."
            )
        ),
        ExampleContainer(toast_simple),
        HighlightedSource(toast_simple_source),
        html.H4("Icons and dismissing"),
        html.P(
            dcc.Markdown(
                "You can use the `icon` argument to add a contextually "
                "coloured icon to the header. You can also add a dismiss "
                "button by setting `dismissable=True`. Clicking on the "
                "dismiss button will dismiss the toast. To make the toast "
                "visible again you should set `is_open` to `True` using a "
                "callback."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                toast_icon_dismiss_source, "toast", {"app": app}
            )
        ),
        HighlightedSource(toast_icon_dismiss_source),
        html.H4("Automatic dismissal"),
        html.P(
            dcc.Markdown(
                "You can have your `Toast` components dismiss themselves by "
                "using the `duration` keyword argument. Specify a duration in "
                "milliseconds after which you would like the `Toast` to "
                "dismiss itself when it first becomes visible."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                toast_auto_dismiss_source, "toast", {"app": app}
            )
        ),
        HighlightedSource(toast_auto_dismiss_source),
        html.H4("Positioning"),
        html.P(
            dcc.Markdown(
                "Toasts can be placed using CSS. If positioning a single "
                "toast you can use the `style` and `className` arguments to "
                "place it. If you will display multiple notifications "
                "consider wrapping them in a container and positioning the "
                "container so that the notifications stack properly."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                toast_position_source, "toast", {"app": app}
            )
        ),
        HighlightedSource(toast_position_source),
        ApiDoc(
            get_component_metadata("src/components/Toast.js"),
            component_name="Toast",
        ),
    ]
