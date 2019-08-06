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

HERE = Path(__file__).parent

fade_source = (HERE / "fade.py").read_text()
fade_transition_source = (HERE / "transition.py").read_text()


def get_content(app):
    return [
        html.H2("Fade", className="display-4"),
        html.P(
            dcc.Markdown(
                "Toggle the visibility of content in your apps with a fade "
                "animation using the `Fade` component."
            ),
            className="lead",
        ),
        html.H4("Simple example"),
        html.P(
            dcc.Markdown(
                "The `Fade` component can be used to show and hide content in "
                "your apps. When the visibility is toggled, the content will "
                "fade in / out. Simply set `is_in=True` to show the content, "
                "and `is_in=False` to hide it again. The simple example below "
                "uses a button click to toggle in the `is_in` prop."
            )
        ),
        ExampleContainer(
            load_source_with_environment(fade_source, "fade", {"app": app})
        ),
        HighlightedSource(fade_source),
        html.H4("Modifying the transition"),
        html.P(
            dcc.Markdown(
                "You can adjust the transition by modifying the `transition` "
                "CSS property using inline styles or by linking a custom "
                "stylesheet."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                fade_transition_source, "fade", {"app": app}
            )
        ),
        HighlightedSource(fade_transition_source),
        ApiDoc(get_component_metadata("src/components/Fade.js")),
    ]
