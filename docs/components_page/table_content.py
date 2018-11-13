from pathlib import Path

from .api_doc import ApiDoc
from .components.table import table
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent

table_source = (HERE / "components" / "table.py").open().read()


content = [
    ExampleContainer(table),
    HighlightedSource(table_source),
    ApiDoc(get_component_metadata("src/components/Table.js")),
]
