from pathlib import Path

from .api_doc import ApiDoc
from .components.table.simple import table as table_simple
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

HERE = Path(__file__).parent
TABLE = HERE / "components" / "table"

table_simple_source = (TABLE / "simple.py").open().read()


content = [
    ExampleContainer(table_simple),
    HighlightedSource(table_simple_source),
    ApiDoc(get_component_metadata("src/components/Table.js")),
]
