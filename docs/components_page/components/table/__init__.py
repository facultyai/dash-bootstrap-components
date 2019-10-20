from pathlib import Path

import dash_core_components as dcc
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
    html.H2("Table", className="display-4"),
    html.P(
        dcc.Markdown(
            "Add Bootstrap styled HTML tables to your app with the `Table` "
            "component."
        )
    ),
    html.H4("Simple example"),
    html.P(
        dcc.Markdown(
            "To add a Bootstrap styled table to your app, use `dbc.Table` as "
            "a drop-in replacement for `html.Table`, building up the content "
            "with `html.Thead`, `html.Tbody`, `html.Th`, `html.Tr` and "
            "`html.Td`."
        )
    ),
    ExampleContainer(table_simple),
    HighlightedSource(table_simple_source),
    html.H4("Styling the table"),
    html.P(
        dcc.Markdown(
            "The style of the table can be modified through a number of "
            "available keyword arguments, such as `dark`, `striped`, "
            "`bordered` and `hover`."
        )
    ),
    ExampleContainer(table_kwargs),
    HighlightedSource(table_kwargs_source),
    html.H4("Table from DataFrame"),
    html.P(
        dcc.Markdown(
            "Manually constructing a HTML table can be tedious. The `Table` "
            "component has a `from_dataframe` method which allows you to "
            "easily construct a `Table` from a Pandas DataFrame. You will "
            "need to have Pandas installed. Either install it yourself or run "
            "`pip install -U dash-bootstrap-components[pandas]`."
        )
    ),
    ExampleContainer(table_helper),
    HighlightedSource(table_helper_source),
    ApiDoc(get_component_metadata("src/components/Table.js")),
    html.Div(_from_dataframe_docs),
]
