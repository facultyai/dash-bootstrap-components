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
from .simple import navbar as navbar_simple

GITHUB_EXAMPLES = "https://github.com/facultyai/dash-bootstrap-components/blob/master/examples/advanced-component-usage/Navbars.py"  # noqa

HERE = Path(__file__).parent

navbar_simple_source = (HERE / "simple.py").read_text()
navbar_source = (HERE / "navbar.py").read_text()


def get_content(app):
    return [
        html.H2("Navbar", className="display-4"),
        html.P(
            dcc.Markdown(
                "Easily create responsive navigation headers using the "
                "`NavbarSimple` and `Navbar` components."
            ),
            className="lead",
        ),
        html.P(
            dcc.Markdown(
                "There are two navbar components in "
                "*dash-bootstrap-components*, `NavbarSimple` and `Navbar`. "
                "The `NavbarSimple` component is simpler but less flexible, "
                "whereas the `Navbar` component is fully customisable, but "
                "requires more boilerplate to get working."
            )
        ),
        html.H4("NavbarSimple"),
        html.P(
            dcc.Markdown(
                "The pre-built `NavbarSimple` consists of a 'brand' on the "
                "left, to which you can attach a link with `brand_href`, and "
                "a number nav items as its children. You can use a mix of "
                "`NavItem` and `DropdownMenu`."
            )
        ),
        html.P(
            dcc.Markdown(
                "The `NavbarSimple` will collapse on smaller screens, and add "
                "a toggle for revealing the navigation items. You can modify "
                "which breakpoint the expansion happens at with the `expand` "
                "keyword argument. The default is `'md'`."
            )
        ),
        ExampleContainer(navbar_simple),
        HighlightedSource(navbar_simple_source),
        html.H4("Navbar"),
        html.P(
            dcc.Markdown(
                "If you want to have more control over the layout of your "
                "navbar you can use the `Navbar` component. This gives you "
                "full control over the children, but you will have to write "
                "your own callbacks to achieve things like the toggle "
                "behaviour on small screens. We recommend using a `Nav` "
                "component to wrap the navigation items, check the "
                "[docs here](/l/components/nav)."
            )
        ),
        html.P(
            [
                "Here is an example of a custom navbar, see the ",
                html.Code("examples/"),
                " folder on ",
                html.A("GitHub", href=GITHUB_EXAMPLES),
                " for more.",
            ]
        ),
        ExampleContainer(
            load_source_with_environment(navbar_source, "navbar", {"app": app})
        ),
        HighlightedSource(navbar_source),
        ApiDoc(
            get_component_metadata("src/components/nav/NavbarSimple.js"),
            component_name="NavbarSimple",
        ),
        ApiDoc(
            get_component_metadata("src/components/nav/Navbar.js"),
            component_name="Navbar",
        ),
        ApiDoc(
            get_component_metadata("src/components/nav/NavbarBrand.js"),
            component_name="NavbarBrand",
        ),
        ApiDoc(
            get_component_metadata("src/components/nav/NavbarToggler.js"),
            component_name="NavbarToggler",
        ),
    ]
