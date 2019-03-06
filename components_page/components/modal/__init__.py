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
LOREM = (HERE / "lorem.txt").read_text()

modal_simple_source = (HERE / "simple.py").read_text()
modal_size_source = (HERE / "size.py").read_text()
modal_backdrop_source = (HERE / "backdrop.py").read_text()
modal_scrollable = (HERE / "scrollable.py").read_text()
modal_centered_source = (HERE / "centered.py").read_text()


def get_content(app):
    return [
        html.H2("Modal", className="display-4"),
        html.P(
            dcc.Markdown(
                "Use the `Modal` component to add dialogs to your app for "
                "lightboxes, user notifications, or completely custom content."
            ),
            className="lead",
        ),
        html.P(
            dcc.Markdown(
                "Modals are built up using the `Modal`, `ModalHeader`, "
                "`ModalBody` and `ModalFooter` components. Set the `is_open` "
                "prop of the `Modal` to `True` to open the modal. By default, "
                "the modal can be dismissed by clicking outside the modal "
                "or by pressing the escape key (these behaviours can both be "
                "overridden, see below), though you can also write your own "
                "callbacks that set `is_open` to `False`."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                modal_simple_source, "modal", {"app": app}
            )
        ),
        HighlightedSource(modal_simple_source),
        html.H4("Modal size"),
        html.P(
            dcc.Markdown(
                "Set the size of the modal using the `size` prop. The options "
                'are `"sm"`, `"lg"`, or `"xl"` for a small, large or extra '
                "large modal. If you don't specify anything, or specify "
                "`size=False`, you will get the default modal size."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                modal_size_source, "modal", {"app": app}
            )
        ),
        HighlightedSource(modal_size_source),
        html.H4("Backdrop"),
        html.P(
            dcc.Markdown(
                "By default the modal will render with a backdrop that "
                "dismisses the modal on click. Set `backdrop=False` to render "
                'the modal without a backdrop, or `backdrop="static"` to '
                "render a backdrop that doesn't dismiss the modal when "
                "clicked."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                modal_backdrop_source, "modal", {"app": app}
            )
        ),
        HighlightedSource(modal_backdrop_source),
        html.H4("Scrolling long content"),
        html.P(
            dcc.Markdown(
                "When modals become too long for the user’s viewport or "
                "device, they scroll independently of the page itself. By "
                "default, the entire modal (including its header and footer) "
                "scrolls. If you prefer you can specify `scrollable=True` to "
                "scroll only the body of the modal."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                modal_scrollable, "modal", {"app": app, "LOREM": LOREM}
            )
        ),
        HighlightedSource(modal_scrollable),
        html.H4("Vertically centered modal"),
        html.P(
            dcc.Markdown(
                "To vertically center the modal on the page, set "
                "`centered=True`."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                modal_centered_source, "modal", {"app": app}
            )
        ),
        HighlightedSource(modal_centered_source),
        ApiDoc(
            get_component_metadata("src/components/modal/Modal.js"),
            component_name="Modal",
        ),
        ApiDoc(
            get_component_metadata("src/components/modal/ModalHeader.js"),
            component_name="ModalHeader",
        ),
        ApiDoc(
            get_component_metadata("src/components/modal/ModalBody.js"),
            component_name="ModalBody",
        ),
        ApiDoc(
            get_component_metadata("src/components/modal/ModalFooter.js"),
            component_name="ModalFooter",
        ),
    ]
