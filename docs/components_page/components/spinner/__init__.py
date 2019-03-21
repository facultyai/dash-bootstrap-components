from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .button import spinners as spinners_button
from .grow import spinners as spinners_grow
from .simple import spinners as spinners_simple
from .size import spinners as spinners_size

HERE = Path(__file__).parent

spinners_simple_source = (HERE / "simple.py").read_text()
spinners_grow_source = (HERE / "grow.py").read_text()
spinners_size_source = (HERE / "size.py").read_text()
spinners_button_source = (HERE / "button.py").read_text()

content = [
    html.H2("Spinners", className="display-4"),
    html.P(
        dcc.Markdown(
            "Indicate the loading state of a component or page with the "
            "`Spinner` component."
        ),
        className="lead",
    ),
    html.H4("Basic usage"),
    html.P(
        dcc.Markdown(
            "By default, `Spinner` uses the current text color for its border "
            "color. Override the color of the `Spinner` using the `color` "
            "argument and one of the eight supported contextual color names."
        )
    ),
    ExampleContainer(spinners_simple),
    HighlightedSource(spinners_simple_source),
    html.H4("Growing spinners"),
    html.P(
        dcc.Markdown(
            "There are two types of spinner, border and grow. Border spinners "
            "are the default and can be seen above. To use grow spinners set "
            '`type="grow"`.'
        )
    ),
    ExampleContainer(spinners_grow),
    HighlightedSource(spinners_grow_source),
    html.H4("Size"),
    html.P(
        dcc.Markdown(
            'Create a small spinner with `size="sm"` or use inline style '
            "arguments for full control of the size of the spinner."
        )
    ),
    ExampleContainer(spinners_size),
    HighlightedSource(spinners_size_source),
    html.H4("Buttons"),
    html.P(
        dcc.Markdown(
            "The `Spinner` component can be used inside buttons to indicate "
            "that an action is currently processing or taking place."
        )
    ),
    ExampleContainer(spinners_button),
    HighlightedSource(spinners_button_source),
    ApiDoc(
        get_component_metadata("src/components/Spinner.js"),
        component_name="Spinner",
    ),
]
