from pathlib import Path

import dash_html_components as html

from .api_doc import ApiDoc
from .components.table.kwargs_source import table as table_kwargs
from .components.table.simple import table as table_simple
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent
TABLE = HERE / "components" / "table"

table_simple_source = (TABLE / "simple.py").read_text()
table_kwargs_source = (TABLE / "kwargs.py").read_text()


content = [
    html.H2("Table"),
    ExampleContainer(table_simple),
    HighlightedSource(table_simple_source),
    html.H4("Styling the table"),
    ExampleContainer(table_kwargs),
    HighlightedSource(table_kwargs_source),
    ApiDoc(get_component_metadata("src/components/Table.js")),
]
