from pathlib import Path

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
    html.H2("Jumbotron"),
    ExampleContainer(jumbotron_simple),
    HighlightedSource(jumbotron_simple_source),
    html.H4("Fluid jumbotron"),
    ExampleContainer(jumbotron_fluid),
    HighlightedSource(jumbotron_fluid_source),
    ApiDoc(get_component_metadata("src/components/Jumbotron.js")),
]
