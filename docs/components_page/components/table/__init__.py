from pathlib import Path

import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .helper import table as table_helper
from .kwargs_source import table as table_kwargs
from .simple import table as table_simple

HERE = Path(__file__).parent

table_simple_source = (HERE / "simple.py").read_text()
table_kwargs_source = (HERE / "kwargs.py").read_text()
table_helper_source = (HERE / "helper.py").read_text()

content = [
    html.H2("Table"),
    ExampleContainer(table_simple),
    HighlightedSource(table_simple_source),
    html.H4("Styling the table"),
    ExampleContainer(table_kwargs),
    HighlightedSource(table_kwargs_source),
    html.H4("Table from DataFrame"),
    html.P(
        [
            "The ",
            html.Code("Table"),
            " component has a ",
            html.Code("from_dataframe"),
            " class method which allows you to easily construct a ",
            html.Code("Table"),
            " from a pandas DataFrame.",
        ]
    ),
    ExampleContainer(table_helper),
    HighlightedSource(table_helper_source),
    ApiDoc(get_component_metadata("src/components/Table.js")),
]
