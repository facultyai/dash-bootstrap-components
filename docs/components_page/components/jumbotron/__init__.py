from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .fluid import jumbotron as jumbotron_fluid
from .simple import jumbotron as jumbotron_simple

HERE = Path(__file__).parent

jumbotron_simple_source = (HERE / "simple.py").read_text()
jumbotron_fluid_source = (HERE / "fluid.py").read_text()

content = [
    html.H2("Jumbotron", className="display-4"),
    html.P(
        dcc.Markdown(
            "Lightweight component for showcasing key content and messages."
        ),
        className="lead",
    ),
    html.H4("Simple example"),
    ExampleContainer(jumbotron_simple),
    HighlightedSource(jumbotron_simple_source),
    html.H4("Fluid jumbotron"),
    html.P(
        dcc.Markdown(
            "To make the jumbotron full width, and without rounded corners, "
            "set `fluid=True`."
        )
    ),
    ExampleContainer(jumbotron_fluid),
    HighlightedSource(jumbotron_fluid_source),
    ApiDoc(get_component_metadata("src/components/Jumbotron.js")),
]
