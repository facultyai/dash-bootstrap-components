from pathlib import Path

import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .helper import table as table_helper
from .kwargs_source import table as table_kwargs
from .simple import table as table_simple

HERE = Path(__file__).parent

_from_dataframe_args = [
    ("df", "pandas.DataFrame", "DataFrame to render as a Table"),
    (
        "float_format",
        "str, optional",
        "Format to use for floating point numbers",
    ),
    ("columns", "sequence, optional", "Columns to render"),
    (
        "header",
        "boolean or list(str) or dict(str: str), optional",
        "Render header. If a list of strings is given it is assumed to be "
        "aliases for the column names (and hence must be the same length as "
        "df.columns). A dict can be passed to rename a subset of the columns, "
        "the format is {'<current_name>': '<new_name>'}. The dict need not "
        "have an entry for every column.",
    ),
    ("index", "boolean, optional", "Render the row names (index)."),
    (
        "index_label",
        "str, optional",
        "Column label for the index column if desired. If None is passed, but "
        "both header and index are True, then the index name is used.",
    ),
    ("date_format", "str, optional", "Format string for datetime objects"),
    (
        "**table_kwargs",
        "keyword arguments",
        "Additional arguments to pass to the Table component. See "
        "dash_bootstrap_components.Table for details.",
    ),
]

_from_dataframe_docs = [
    html.H4(
        "Keyword arguments for Table.from_dataframe", className="mt-5 mb-2"
    ),
    html.Ul(
        [
            html.Li(
                [
                    html.Code(argument_name),
                    " ",
                    html.I(f"({type_string})"),
                    ": ",
                    description,
                ]
            )
            for argument_name, type_string, description in _from_dataframe_args
        ],
        className="list-unstyled",
    ),
]

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
            " from a pandas DataFrame. You will need to have ",
            html.Code("pandas"),
            " and ",
            html.Code("numpy"),
            " installed. Either install them yourself, or use the command ",
            html.Code("pip install -U dash-bootstrap-components[pandas]"),
            ".",
        ]
    ),
    ExampleContainer(table_helper),
    HighlightedSource(table_helper_source),
    ApiDoc(get_component_metadata("src/components/Table.js")),
    html.Div(_from_dataframe_docs),
]
