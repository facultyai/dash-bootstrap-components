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
from .alignment import dropdown as dropdown_alignment
from .content import dropdown as dropdown_content
from .direction import dropdown as dropdown_direction
from .simple import dropdown as dropdown_simple
from .size import dropdown as dropdown_size
from .style import dropdowns as dropdown_style

HERE = Path(__file__).parent

dropdown_simple_source = (HERE / "simple.py").read_text()
dropdown_items_source = (HERE / "menu_items.py").read_text()
dropdown_style_source = (HERE / "style.py").read_text()
dropdown_size_source = (HERE / "size.py").read_text()
dropdown_direction_source = (HERE / "direction.py").read_text()
dropdown_alignment_source = (HERE / "alignment.py").read_text()
dropdown_content_source = (HERE / "content.py").read_text()


def get_content(app):
    return [
        html.H2("DropdownMenus", className="display-4"),
        html.P(
            dcc.Markdown(
                "Use `DropdownMenu` to organise lists of links and buttons "
                "into a toggleable overlay."
            ),
            className="lead",
        ),
        html.P(
            dcc.Markdown(
                "DropdownMenus are built up using the `DropdownMenu`, and "
                "`DropdownMenuItem` components. `DropdownMenu` will render a "
                "button to act as a toggle for the menu itself. The style of "
                "the toggle can be overridden with custom CSS. Clicking on "
                "the button will toggle the menu, without the need for you to "
                "write any callbacks."
            )
        ),
        html.P(
            dcc.Markdown(
                "Note: our `DropdownMenu` is an analogue of Bootstrap's "
                "Dropdown component. We have changed the name to avoid a "
                "clash with the existing `Dropdown` component in "
                "_dash-core-components_ which serves a different purpose."
            )
        ),
        html.H4("Simple example"),
        html.P(
            dcc.Markdown(
                "This example creates a simple dropdown menu with three items."
            )
        ),
        ExampleContainer(dropdown_simple),
        HighlightedSource(dropdown_simple_source),
        html.P(
            dcc.Markdown(
                "Each `DropdownMenuItem` can be used like "
                "`dash_core_components.Link`, as a regular hyperlink, or as a "
                "button by defining a callback that uses the `n_clicks` prop "
                "as an input. By default, `DropdownMenuItem` will behave like "
                "`dash_core_components.Link` if you assign a relative path to "
                "`href`, and like a regular hyperlink if you assign an "
                "absolute path. If you want to override this, for example you "
                "might like to access a route on the underlying Flask server, "
                "you can set `external_link=True`."
            )
        ),
        ExampleContainer(
            load_source_with_environment(
                dropdown_items_source, "dropdown", {"app": app}
            )
        ),
        HighlightedSource(dropdown_items_source),
        html.H4("Styling the toggle"),
        html.P(
            dcc.Markdown(
                "You can use the `color` prop of `DropdownMenu` to set the "
                "color to one of the Bootstrap contextual colors. If you want "
                "to further customise the style you can use the "
                "`toggle_style` and `toggleClassName` arguments."
            )
        ),
        ExampleContainer(dropdown_style),
        HighlightedSource(dropdown_style_source),
        html.H4("DropdownMenu sizing"),
        html.P(
            dcc.Markdown(
                "Control the size of the `DropdownMenu` toggle using the "
                "`size` argument. You can specify either `'sm'`, `'md'` "
                "(default), or `'lg'`."
            )
        ),
        ExampleContainer(dropdown_size),
        HighlightedSource(dropdown_size_source),
        html.H4("DropdownMenu direction"),
        html.P(
            dcc.Markdown(
                "Use the `direction` argument to control where the menu is "
                "rendered relative to the toggle. The possible options are "
                "`'up'`, `'down'` (default), `'left'`, or `'right'`."
            )
        ),
        ExampleContainer(dropdown_direction),
        HighlightedSource(dropdown_direction_source),
        html.H4("DropdownMenu alignment"),
        html.P(
            dcc.Markdown(
                "By default the menu is aligned with left of the toggle. Set "
                "`align='right'` for a right aligned menu."
            )
        ),
        ExampleContainer(dropdown_alignment),
        HighlightedSource(dropdown_alignment_source),
        html.H4("Menu content"),
        html.P(
            dcc.Markdown(
                "Use the `active` and `disabled` arguments of "
                "`DropdownMenuItem` to set the active and disabled styles of "
                "menu items respectively. You can also use the `header` or "
                "`divider` arguments to create headers and dividers to help "
                "structure the menu. You can also include custom content such "
                "as text."
            )
        ),
        ExampleContainer(dropdown_content),
        HighlightedSource(dropdown_content_source),
        ApiDoc(
            get_component_metadata(
                "src/components/dropdownmenu/DropdownMenu.js"
            ),
            component_name="DropdownMenu",
        ),
        ApiDoc(
            get_component_metadata(
                "src/components/dropdownmenu/DropdownMenuItem.js"
            ),
            component_name="DropdownMenuItem",
        ),
    ]
