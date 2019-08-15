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
        html.H2("Forms", className="display-4"),
        html.P(
            dcc.Markdown(
                "Use Bootstrap's form components to control the layout and "
                "style of your forms."
            ),
            className="lead",
        ),
        html.P(
            dcc.Markdown(
                "When building Dash apps we rarely make use of HTML forms, "
                "instead attaching callbacks to input components. However, "
                "Bootstrap's form components can still be a powerful way to "
                "control the layout of a collection of input components. We "
                "demonstrate a number of layout options below."
            )
        ),
        html.H4("Simple form"),
        html.P(
            dcc.Markdown(
                "The `FormGroup` is the easiest way to add structure to "
                "forms. It encourages proper grouping of labels, controls, "
                "optional help text, and form validation messaging. See this "
                "simple example."
            )
        ),
        ExampleContainer(form_simple),
        HighlightedSource(form_simple_source),
        html.H4("Horizontal form"),
        html.P(
            dcc.Markdown(
                "Create a horizontal form by setting `row=True` on the "
                "`FormGroup` component. Be sure to specify `width` on the "
                "`Label` component, and wrap your inputs in `Col` components."
            )
        ),
        ExampleContainer(form_row),
        HighlightedSource(form_row_source),
        html.H4("Using grid layout with forms"),
        html.P(
            dcc.Markdown(
                "You can also use the grid components `Row` and `Col` to "
                "build more complex layouts. You can set `form=True` in the "
                "`Row` component to reduce the size of the column gutters for "
                "tighter, more compact layouts."
            )
        ),
        ExampleContainer(form_grid),
        HighlightedSource(form_grid_source),
        html.H4("Inline form"),
        html.P(
            dcc.Markdown(
                "You can use the `Form` component with `inline=True` to "
                "display a series of labels, controls and buttons on a single "
                "horizontal row. Use [Bootstrap's spacing utilities]"
                "(https://getbootstrap.com/docs/4.3/utilities/spacing/) as we "
                "have below to control the spacing between components in the "
                "inline form."
            )
        ),
        ExampleContainer(form_inline),
        HighlightedSource(form_inline_source),
        html.H4("Form Feedback"),
        html.P(
            dcc.Markdown(
                "Use the `valid` and `invalid` properties of `Input`, "
                "alongside the `FormFeedback` component to give actionable "
                "feedback for user supplied inputs."
            )
        ),
        html.P(
            dcc.Markdown(
                "The `Input` component has two properties, `valid` and "
                "`invalid`, that can be set in callbacks. They can be used to "
                "indicate whether the input value is valid or invalid. When "
                "`valid=True`, the `Input` will be styled with a green "
                "colored border, similarly when `invalid=True` the input will "
                "be styled with a red colored border."
            )
        ),
        html.P(
            dcc.Markdown(
                "The `FormFeedback` component should be added to the "
                "`FormGroup` containing the `Input` it is associated with. "
                "Use the `valid` property to indicate whether the feedback "
                "should display for valid or invalid inputs. The feedback "
                "automatically display when the validity of the `Input` "
                "in the `FormGroup` matches that of the `FormFeedback`. This "
                "is perhaps easiest to see with an example such as the below."
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
            dcc.Markdown(
                "The `Form` and `FormGroup` components can also be used with "
                "_dash-core-components_."
            )
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
