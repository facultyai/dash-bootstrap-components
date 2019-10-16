from pathlib import Path

import dash_core_components as dcc
import dash_html_components as html

from ...api_doc import ApiDoc
from ...helpers import ExampleContainer, HighlightedSource
from ...metadata import get_component_metadata
from .breakpoints import row as layout_breakpoints
from .horizontal import row as layout_horizontal
from .no_gutters import row as layout_no_gutters
from .order_offset import row as layout_order_offset
from .simple import row as layout_simple
from .vertical import row as layout_vertical
from .width import row as layout_width

HERE = Path(__file__).parent

BOOTSTRAP_DOWNLOAD = (
    "https://getbootstrap.com/docs/4.2/getting-started/download/"
)

layout_simple_source = (HERE / "simple.py").read_text()
layout_width_source = (HERE / "width.py").read_text()
layout_order_offset_source = (HERE / "order_offset.py").read_text()
layout_breakpoints_source = (HERE / "breakpoints.py").read_text()
layout_no_gutters_source = (HERE / "no_gutters.py").read_text()
layout_vertical_source = (HERE / "vertical.py").read_text()
layout_horizontal_source = (HERE / "horizontal.py").read_text()
grid_only_source = (HERE / "grid_only.py").read_text()

content = html.Div(
    [
        html.H2("Layout", className="display-4"),
        html.P(
            "Components for laying out your Dash app, including wrapping "
            "containers, and a powerful, responsive grid system.",
            className="lead",
        ),
        html.P(
            dcc.Markdown(
                "Layout in Bootstrap is controlled using the grid system. The "
                "Bootstrap grid has twelve columns, and five responsive tiers "
                "(allowing you to specify different behaviours on different "
                "screen sizes, see below). The width of your columns can be "
                "specified in terms of how many of the twelve grid columns it "
                "should span, or you can allow the columns to expand or "
                "shrink to fit either their content or the available space in "
                "the row."
            )
        ),
        html.P(
            dcc.Markdown(
                "There are three main layout components in "
                "*dash-bootstrap-components*: `Container`, `Row`, and `Col`."
            )
        ),
        html.P(
            dcc.Markdown(
                "The `Container` component can be used to center and "
                "horizontally pad your app's content. The docs you are "
                "currently reading are themselves a Dash app built with "
                "*dash-bootstrap-components*. The content on this page has "
                "been centered by wrapping it in a `Container` component. By "
                "default the container has a responsive pixel width. Use the "
                "keyword argument `fluid=True` if you want your `Container` "
                "to fill available horizontal space and resize fluidly."
            )
        ),
        html.P(
            dcc.Markdown(
                "The `Row` component is a wrapper for columns. The layout of "
                "your app should be built as a series of rows of columns."
            )
        ),
        html.P(
            dcc.Markdown(
                "When using the grid layout, content should be placed in "
                "columns, and only `Col` components should be immediate "
                "children of `Row`."
            )
        ),
        html.P(
            [
                "For much more detail on the Bootstrap grid system, see the ",
                html.A(
                    "Bootstrap documentation",
                    href="https://getbootstrap.com/docs/4.2/layout/grid/",
                ),
                ".",
            ]
        ),
        html.H4("Row with columns"),
        html.P(
            "By default, columns will have equal width and will expand to "
            "fill available space."
        ),
        ExampleContainer(layout_simple),
        HighlightedSource(layout_simple_source),
        html.H4("Specify width"),
        html.P(
            dcc.Markdown(
                "Specify the desired width of each column using the `width` "
                "keyword argument. The basic options are:\n\n"
                "- `True`, the default, column will expand to fill the "
                "available space.\n"
                '- `"auto"`, column will be sized according to the natural '
                "width of its content.\n"
                "- An integer `1`,...,`12`. Column will span this many of the "
                "12 grid columns. For a half width column, set `width=6`, for "
                "a third width column, set `width=4`, and so on."
            )
        ),
        ExampleContainer(layout_width),
        HighlightedSource(layout_width_source),
        html.H4("Specify order and offset"),
        html.P(
            dcc.Markdown(
                "In addition to the simple width arguments outlined above, "
                "you can pass a dictionary of values to `width`. The "
                "dictionary can have keys `size`, `order` and `offset`."
            )
        ),
        html.P(
            dcc.Markdown(
                "`size` takes any of the simple arguments that `width` "
                'understands, i.e. `True`, "auto", or an integer `1`,...,`12`,'
                " and specifies the size / width of the column."
            )
        ),
        html.P(
            dcc.Markdown(
                "`order` can be used to reorder the columns. It accepts the "
                'integers `1`,...,`12`, or the strings `"first"` and `"last"`.'
                " Columns will then be ordered numerically, with columns "
                'specified as `"first"` or `"last"` being placed first and '
                "last respectively. If two columns have the same order, they "
                "will keep the order they are specified in the source."
            )
        ),
        html.P(
            dcc.Markdown(
                "Finally `offset` accepts the integers `1`, ..., `12` and "
                "increases the left margin of the column by that number of "
                "grid columns."
            )
        ),
        ExampleContainer(layout_order_offset),
        HighlightedSource(layout_order_offset_source),
        html.H4("Specify width for different screen sizes"),
        html.P(
            dcc.Markdown(
                "Bootstrap’s grid includes five responsive tiers for building "
                "complex responsive layouts. Customize the size, order and "
                "offset of your columns on extra small, small, medium, large, "
                "or extra large devices using the `xs`, `sm`, `md`, `lg`, and "
                "`xl` keyword arguments. Each takes the same arguments as "
                "`width` and specifies the column behaviour for that size of "
                "screen or larger. `width` secretly just sets `xs`. If you "
                "specify both, `xs` will override `width`."
            )
        ),
        html.P(
            dcc.Markdown(
                "The first of the following two examples has three columns, "
                "we set `md=4` indicating that on a 'medium' sized or larger "
                "screen each column should take up a third of the width. "
                "Since we don't specify behaviour on smaller size screens "
                "Bootstrap will allow the rows to wrap so as not to squash "
                "the content. You will see this happening if you resize the "
                "window you are reading this in."
            )
        ),
        html.P(
            dcc.Markdown(
                "In the second example we set `lg=3`, indicating that on a "
                "'large' sized or larger screen each column should take up a "
                "quarter of the width of the row. We also set `width=6`, "
                "indicating that the default width of each column should be "
                "half of the available width of the row. Again you will see "
                "this behaviour if you resize this window."
            )
        ),
        html.P(
            "By setting different sizes, orders and offsets for the different "
            "responsive tiers you can build very complex layouts without the "
            "need for writing your own CSS or inline styles."
        ),
        ExampleContainer(layout_breakpoints),
        HighlightedSource(layout_breakpoints_source),
        html.H4("Row without 'gutters'"),
        html.P(
            dcc.Markdown(
                "By default, horizontal spacing is added between the columns. "
                "Use `no_gutters=True` to disable this."
            )
        ),
        ExampleContainer(layout_no_gutters),
        HighlightedSource(layout_no_gutters_source),
        html.H4("Vertical alignment"),
        html.P(
            dcc.Markdown(
                "Control the vertical alignment of each column in the row "
                "using the `align` keyword. You can specify a value for "
                "`align` in either the `Col` component or its parent `Row`. "
                "If you specify a value for `align` in the `Col` it will "
                "overrule any value specified in the parent `Row`. The "
                'available options are `"start"`, `"center"`, `"end"` which '
                "align the columns along the top, center, and bottom of the "
                "row respectively."
            )
        ),
        html.Div(
            [
                ExampleContainer(layout_vertical),
                HighlightedSource(layout_vertical_source),
            ],
            className="pad-row",
        ),
        html.H4("Horizontal alignment"),
        html.P(
            dcc.Markdown(
                "You can also control horizontal alignment of columns using "
                "the `justify` keyword argument of `Row`. The options are "
                '`"start"`, `"center"`, `"end"`, `"between"` and `"around"`.'
            )
        ),
        ExampleContainer(layout_horizontal),
        HighlightedSource(layout_horizontal_source),
        html.H4("Using only the grid components"),
        html.P(
            dcc.Markdown(
                "Sometimes you may wish to use Bootstrap's grid system for "
                "specifying the layout of your app, but you don't want the "
                "changes Bootstrap makes to the typography, or to load all "
                "the additional CSS classes that Bootstrap specifies. In such "
                "a situation, you can link only the CSS required for the grid "
                "system using the `themes` module."
            )
        ),
        html.Div(
            dcc.Markdown(f"```python\n{grid_only_source}\n```"),
            className="source-container",
        ),
        html.P(
            [
                "Alternatively download ",
                html.Code("bootstrap-grid.css"),
                " from the ",
                html.A("Bootstrap website", href=BOOTSTRAP_DOWNLOAD),
                " and place it in your app's ",
                html.Code("assets/"),
                " directory. See the ",
                html.A(
                    "Plotly Dash documentation",
                    href="https://dash.plot.ly/external-resources",
                ),
                " for details.",
            ]
        ),
        ApiDoc(
            get_component_metadata("src/components/layout/Container.js"),
            component_name="Container",
        ),
        ApiDoc(
            get_component_metadata("src/components/layout/Row.js"),
            component_name="Row",
        ),
        ApiDoc(
            get_component_metadata("src/components/layout/Col.js"),
            component_name="Col",
        ),
    ],
    className="layout-demo",
)
