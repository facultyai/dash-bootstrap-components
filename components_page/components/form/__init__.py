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
from .dash_core import form as form_dcc
from .grid import form as form_grid
from .inline import form as form_inline
from .row import form as form_row
from .simple import form as form_simple

HERE = Path(__file__).parent

form_simple_source = (HERE / "simple.py").read_text()
form_row_source = (HERE / "row.py").read_text()
form_grid_source = (HERE / "grid.py").read_text()
form_inline_source = (HERE / "inline.py").read_text()
form_dcc_source = (HERE / "dash_core.py").read_text()
form_feedback_source = (HERE / "feedback.py").read_text()


def get_content(app):
    return [
        html.H2("Simple form"),
        ExampleContainer(form_simple),
        HighlightedSource(form_simple_source),
        html.H4("FormGroup row"),
        ExampleContainer(form_row),
        HighlightedSource(form_row_source),
        html.H4("Using grid layout with forms"),
        ExampleContainer(form_grid),
        HighlightedSource(form_grid_source),
        html.H4("Inline form"),
        ExampleContainer(form_inline),
        HighlightedSource(form_inline_source),
        html.H4("Form Feedback"),
        html.P(
            dcc.Markdown(
                "You can combine the valid / invalid styling with the "
                "`FormFeedback` component to give actionable feedback for "
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
                "`FormGroup` component. In the below example we create two "
                "`FormFeedback` components, one valid, one not valid. "
                "They will appear / disappear automatically as the `valid` "
                "and `invalid` properties of `Input` are set to `True` / "
                "`False` respectively."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                form_feedback_source, "email_input", {"app": app}
            )
        ),
        HighlightedSource(form_feedback_source),
        html.H4("Dash Core Components"),
        html.P(
            [
                "The ",
                html.Code("Form"),
                " and ",
                html.Code("FormGroup"),
                " components work well with Dash core components",
            ]
        ),
        ExampleContainer(form_dcc),
        HighlightedSource(form_dcc_source),
        ApiDoc(
            get_component_metadata("src/components/form/Form.js"),
            component_name="Form",
        ),
        ApiDoc(
            get_component_metadata("src/components/form/FormGroup.js"),
            component_name="FormGroup",
        ),
        ApiDoc(
            get_component_metadata("src/components/form/FormText.js"),
            component_name="FormText",
        ),
        ApiDoc(
            get_component_metadata("src/components/form/FormFeedback.js"),
            component_name="FormFeedback",
        ),
    ]
