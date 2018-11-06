from pathlib import Path

from .api_doc import ApiDoc
from .components.forms.simple import form as form_simple
from .helpers import ExampleContainer, HighlightedSource
from .metadata import get_component_metadata

# from .components.cards.simple import cards as cards_simple
# from .components.cards.content_types import cards as cards_content_types
# from .components.cards.group import cards as cards_group
# from .components.cards.columns import cards as cards_columns


HERE = Path(__file__).parent
FORMS = HERE / "components" / "forms"

form_simple_source = (FORMS / "simple.py").open().read()
# cards_simple_source = (CARDS / "simple.py").open().read()
# cards_content_type_source = (CARDS / "content_types.py").open().read()
# cards_group_source = (CARDS / "group.py").open().read()
# cards_columns_source = (CARDS / "columns.py").open().read()


content = [
    ExampleContainer(form_simple),
    HighlightedSource(form_simple_source),
    ApiDoc(
        get_component_metadata("src/components/form/Form.js"),
        component_name="Form",
    ),
]
