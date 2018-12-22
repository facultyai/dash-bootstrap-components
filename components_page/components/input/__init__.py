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
from .size import inputs as input_size
from .text_label import text_input as input_text_label
from .validation import inputs as input_validation

HERE = Path(__file__).parent

input_simple_source = (HERE / "simple.py").read_text()
input_text_label_source = (HERE / "text_label.py").read_text()
input_size_source = (HERE / "size.py").read_text()
input_validation_source = (HERE / "validation.py").read_text()
input_feedback_source = (HERE / "feedback.py").read_text()


def get_content(app):
    return [
        html.H2("Input"),
        html.P(
            dcc.Markdown(
                "`dash-bootstrap-components` has its own `Input` component "
                "that allows input related Bootstrap styles to be set through "
                "the Python interface. The basic usage is the same as "
                "`dash-core-components`"
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                input_simple_source, "text_input", {"app": app}
            )
        ),
        HighlightedSource(input_simple_source),
        html.H4("Labels and Text"),
        html.P(
            [
                dcc.Markdown(
                    "Use the `FormGroup` component along with `Label` and "
                    "`FormText` to control the layout of your `Input` "
                    "components."
                ),
                "See the ",
                dcc.Link("documentation for forms", href="/l/components/form"),
                " for more details.",
            ]
        ),
        ExampleContainer(input_text_label),
        HighlightedSource(input_text_label_source),
        html.H4("Input size"),
        html.P(
            dcc.Markdown(
                "You can control the size of the `Input` using the `bs_size` "
                "keyword argument. It accepts the values `sm`, `md` or `lg` "
                "for small, medium or large sizes respectively."
            )
        ),
        ExampleContainer(input_size),
        HighlightedSource(input_size_source),
        html.H4("Input validation"),
        html.P(
            dcc.Markdown(
                "Add valid / invalid styles to your `Input` components using "
                "the `valid` and `invalid` keyword arguments."
            )
        ),
        ExampleContainer(input_validation),
        HighlightedSource(input_validation_source),
        html.H4("Form Feedback"),
        html.P(
            dcc.Markdown(
                "You can combine the valid / invalid styling with the "
                "`FormFeeback` component to give actionable feedback for "
                "user supplied inputs."
            )
        ),
        html.P(
            dcc.Markdown(
                "For the `Input` component, `valid` and `invalid` are not "
                "complements of each other (a particular input could be "
                "neither valid nor invalid), so we must set them both "
                "appropriately. For the `FormFeedback` component, we must "
                "set the `valid` property. The feedback will display if its "
                "validity matches the validity of the `Input`. For this to "
                "work you must wrap your `Input` and `FormFeedback` in a "
                "`FormGroup` component."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                input_feedback_source, "email_input", {"app": app}
            )
        ),
        HighlightedSource(input_feedback_source),
        ApiDoc(
            get_component_metadata("src/components/input/Input.js"),
            component_name="Input",
        ),
    ]
