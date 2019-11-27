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

ACCORDION = "https://getbootstrap.com/docs/4.3/components/collapse/#accordion-example"  # noqa

HERE = Path(__file__).parent

collapse_simple_source = (HERE / "simple.py").read_text()
collapse_multiple_source = (HERE / "multiple.py").read_text()
accordion_source = (HERE / "accordion.py").read_text()


def get_content(app):
    return [
        html.H2("Collapse", className="display-4"),
        html.P(
            dcc.Markdown(
                "Toggle the visibility of content in your apps using the "
                "`Collapse` component"
            ),
            className="lead",
        ),
        html.H4("Simple example"),
        html.P(
            dcc.Markdown(
                "The `Collapse` component can be used to show and hide "
                "content in your apps. Simply set `is_open=True` to show the "
                "content, and `is_open=False` to hide it. This simple example "
                "uses a button click to toggle the `is_open` prop."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                collapse_simple_source, "collapse", {"app": app}
            )
        ),
        HighlightedSource(collapse_simple_source),
        html.H4("Multiple targets"),
        html.P(
            dcc.Markdown(
                "You can write arbitrarily complex callbacks to control the "
                "behaviour of your `Collapse` components. This example has "
                "a single button controlling multiple `Collapse` components, "
                "as well as multiple buttons sharing control of a single "
                "`Collapse` component."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                collapse_multiple_source, "collapses", {"app": app}
            )
        ),
        HighlightedSource(collapse_multiple_source),
        html.H4("Accordion"),
        html.P(
            dcc.Markdown(
                "You can replicate the accordion example in the [Bootstrap "
                f"docs]({ACCORDION}) by writing a callback with multiple "
                "outputs."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                accordion_source, "accordion", {"app": app}
            )
        ),
        HighlightedSource(accordion_source),
        ApiDoc(get_component_metadata("src/components/Collapse.js")),
    ]
