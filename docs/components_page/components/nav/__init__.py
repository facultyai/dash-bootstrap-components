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
from .fill import navs as nav_fill
from .link_based import nav as nav_link_based
from .pill import nav as nav_pill
from .simple import nav as nav_simple
from .vertical import nav as nav_vertical

HERE = Path(__file__).parent

nav_simple_source = (HERE / "simple.py").read_text()
nav_link_based_source = (HERE / "link_based.py").read_text()
navlink_source = (HERE / "navlink.py").read_text()
nav_fill_source = (HERE / "fill.py").read_text()
nav_vertical_source = (HERE / "vertical.py").read_text()
nav_pill_source = (HERE / "pill.py").read_text()


def get_content(app):
    return [
        html.H2("Navs", className="display-4"),
        html.P(
            dcc.Markdown(
                "Documentation and examples for how to use Bootstrap's "
                "navigation components with *dash-bootstrap-components*."
            ),
            className="lead",
        ),
        html.H4("Base nav"),
        html.P(
            dcc.Markdown(
                "Navigation is built up using `Nav`, `NavItem`, `NavLink` and "
                "`DropdownMenu`. Use `nav=True` when using `DropdownMenu` "
                "inside a `Nav` for consistent styling with `NavItem` and "
                "`NavLink`."
            )
        ),
        ExampleContainer(nav_simple),
        HighlightedSource(nav_simple_source),
        html.P(
            dcc.Markdown(
                "It is only necessary to wrap `NavLink` with `NavItem` if you "
                "wish to use the `fill` or `justified` keyword arguments "
                "detailed below. If you're not using those features you can "
                "simplify your layout by just passing `NavLink` directly as "
                "children of `Nav`."
            )
        ),
        ExampleContainer(nav_link_based),
        HighlightedSource(nav_link_based_source),
        html.H4("Using NavLink"),
        html.P(
            dcc.Markdown(
                "The `NavLink` component can be used like "
                "`dash_core_components.Link`, as a regular hyperlink, or "
                "as a button by attaching a callback to the `n_clicks` prop. "
                "`NavLink` will behave like `dcc.Link` by default if we "
                "assign a relative path to `href`, and like a hyperlink if we "
                "assign an absolute path. This can be overridden using the "
                "`external_link` argument. This is useful, for example, when "
                "accessing routes on the underlying flask server."
            )
        ),
        ExampleContainer(
            load_source_with_environment(navlink_source, "nav", {"app": app})
        ),
        HighlightedSource(navlink_source),
        html.H4("Horizontal alignment"),
        html.P(
            dcc.Markdown(
                "Use `fill=True` to force navigation items to expand to fill "
                "available horizontal space. Use `justified=True` to fill "
                "available horizontal space, with each item having equal "
                "width."
            )
        ),
        ExampleContainer(nav_fill),
        HighlightedSource(nav_fill_source),
        html.H4("Vertical stacking"),
        html.P(
            dcc.Markdown(
                "Use the `vertical` argument to stack navigation items. You "
                "can pass either a Boolean, or one of the Bootstrap "
                "breakpoints e.g. `'sm'`, `'lg'`. The example below is "
                "vertical on screens larger than the medium breakpoint, and "
                "horizontal on smaller screens."
            )
        ),
        ExampleContainer(nav_vertical),
        HighlightedSource(nav_vertical_source),
        html.H4("Pills"),
        html.P(
            dcc.Markdown(
                "Use the `pills` argument to indicate active state with pill "
                "styled nav items."
            )
        ),
        ExampleContainer(nav_pill),
        HighlightedSource(nav_pill_source),
        html.H4("Tabs"),
        html.P(
            dcc.Markdown(
                "Bootstrap also lets you apply tab styling to navs, check out "
                "our self-contained `Tabs` component "
                "[here](/l/components/tabs)."
            )
        ),
        ApiDoc(
            get_component_metadata("src/components/nav/Nav.js"),
            component_name="Nav",
        ),
        ApiDoc(
            get_component_metadata("src/components/nav/NavItem.js"),
            component_name="NavItem",
        ),
        ApiDoc(
            get_component_metadata("src/components/nav/NavLink.js"),
            component_name="NavLink",
        ),
    ]
