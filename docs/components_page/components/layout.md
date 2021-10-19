---
title: Layout
lead: Components for laying out your Dash app, including wrapping containers, and a powerful, responsive grid system.
---

## Examples

Layout in Bootstrap is controlled using the grid system. The Bootstrap grid has twelve columns, and five responsive tiers (allowing you to specify different behaviours on different screen sizes, see below). The width of your columns can be specified in terms of how many of the twelve grid columns it should span, or you can allow the columns to expand or shrink to fit either their content or the available space in the row.

There are three main layout components in _dash-bootstrap-components_: `Container`, `Row`, and `Col`.

The `Container` component can be used to center and horizontally pad your app's content. The docs you are currently reading are themselves a Dash app built with _dash-bootstrap-components_. The content on this page has been centered by wrapping it in a `Container` component. By default the container has a responsive pixel width. Use the keyword argument `fluid=True` if you want your `Container` to fill available horizontal space and resize fluidly.

The `Row` component is a wrapper for columns. The layout of your app should be built as a series of rows of columns.

The `Col` component should always be used as an immediate child of `Row` and is a wrapper for your content that ensures it takes up the correct amount of horizontal space.

For best results, make sure you adhere to the following two rules when constructing your layouts:

1. Only use `Row` and `Col` inside a `Container`. A single `Container` wrapping your entire app's content is fine. Set `fluid=True` if you don't want the margins that `Container` adds by default. Since the content of this page is wrapped with a `Container`, the snippets below don't explicitly include them.
2. The immediate children of any `Row` component should always be `Col` components. Your content should go inside the `Col` components.

For much more detail on the Bootstrap grid system, see the [Bootstrap documentation](https://getbootstrap.com/docs/4.2/layout/grid/).

## Row with columns

By default, columns will have equal width and will expand to fill available space.

{{example:components/layout/simple.py:row}}

Specify the desired width of each column using the `width` keyword argument. The basic options are:

- `True`, the default, column will expand to fill the available space.
- `"auto"`, column will be sized according to the natural width of its content.
- An integer `1`,...,`12`. Column will span this many of the 12 grid columns. For a half width column, set `width=6`, for a third width column, set `width=4`, and so on.

{{example:components/layout/width.py:row}}

## Specify order and offset

In addition to the simple width arguments outlined above, you can pass a dictionary of values to `width`. The dictionary can have keys `size`, `order` and `offset`.

`size` takes any of the simple arguments that `width` understands, i.e. `True`, "auto", or an integer `1`,...,`12`, and specifies the size / width of the column.

`order` can be used to reorder the columns. It accepts the integers `1`,...,`5`, or the strings `"first"` and `"last"`. Columns will then be ordered numerically, with columns specified as `"first"` or `"last"` being placed first and last respectively. If two columns have the same order, they will keep the order they are specified in the source.

Finally `offset` accepts the integers `1`, ..., `12` and increases the left margin of the column by that number of grid columns.

{{example:components/layout/order_offset.py:row}}

## Specify width for different screen sizes

Bootstrap’s grid includes six responsive tiers for building complex responsive layouts. Customize the size, order and offset of your columns on devices ranging in size from extra small to extra extra large using the `xs`, `sm`, `md`, `lg`, `xl` and `xxl` keyword arguments. Each takes the same arguments as `width` and specifies the column behaviour for that size of screen or larger. `width` secretly just sets `xs`. If you specify both, `xs` will override `width`.

The first of the following two examples has three columns, we set `md=4` indicating that on a 'medium' sized or larger screen each column should take up a third of the width. Since we don't specify behaviour on smaller size screens Bootstrap will allow the rows to wrap so as not to squash the content. You will see this happening if you resize the window you are reading this in.

In the second example we set `lg=3`, indicating that on a 'large' sized or larger screen each column should take up a quarter of the width of the row. We also set `width=6`, indicating that the default width of each column should be half of the available width of the row. Again you will see this behaviour if you resize this window.

By setting different sizes, orders and offsets for the different responsive tiers you can build very complex layouts without the need for writing your own CSS or inline styles.

{{example:components/layout/breakpoints.py:row}}

## Row without 'gutters'

By default, horizontal spacing is added between the columns. Use Bootstrap's [gutter modifier classes](https://getbootstrap.com/docs/5.1/layout/gutters/) to adjust this.

{{example:components/layout/no_gutters.py:row}}

## Vertical alignment

Control the vertical alignment of each column in the row using the `align` keyword. You can specify a value for `align` in either the `Col` component or its parent `Row`. If you specify a value for `align` in the `Col` it will overrule any value specified in the parent `Row`. The available options are `"start"`, `"center"`, `"end"` which align the columns along the top, center, and bottom of the row respectively.

{{example:components/layout/vertical.py:row}}

## Horizontal alignment

You can also control horizontal alignment of columns using the `justify` keyword argument of `Row`. The options are `"start"`, `"center"`, `"end"`, `"between"` and `"around"`.

{{example:components/layout/horizontal.py:row}}

## Using only the grid components

Sometimes you may wish to use Bootstrap's grid system for specifying the layout of your app, but you don't want the changes Bootstrap makes to the typography, or to load all the additional CSS classes that Bootstrap specifies. In such a situation, you can link only the CSS required for the grid system using the `themes` module.

{{code-example:components/layout/grid_only.py}}

Alternatively download `bootstrap-grid.css` from the [Bootstrap website](https://getbootstrap.com/docs/4.2/getting-started/download/) and place it in your app's `assets/` directory. See the [Plotly Dash documentation](https://dash.plot.ly/external-resources) for details.

{{apidoc:src/components/layout/Container.js}}

{{apidoc:src/components/layout/Row.js}}

{{apidoc:src/components/layout/Col.js}}
