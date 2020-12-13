---
title: FAQ
---

# Frequently Asked Questions

This page contains various tips and tricks and answers to frequently asked questions about _dash-bootstrap-components_. If you think something is missing, please submit an [issue][issue] on the GitHub issue tracker.

### How do I use `Tooltip` or `Popover` with pattern-matching callbacks?

Dash 1.11.0 added support for [pattern matching callbacks](https://dash.plotly.com/pattern-matching-callbacks) which allows you to write callbacks that can update an arbitrary or dynamic number of Dash components. To enable this, the `id` of a Dash component can now be a Python dictionary, and the callback is triggered based on a matching rule with one or more of the keys in this dictionary.

However, it is not possible to use a dictionary as the `target` of the `Popover` or `Tooltip` components. The reason for this is explained below. To get around the problem, the best thing to do is to wrap your dynamically created components with a `html.Div` element or similar, and use a string `id` for the wrapper which you then use as the target for the `Tooltip` or `Popover`. For example this example from the Dash documentation

```python
@app.callback(
    Output('dropdown-container', 'children'),
    Input('add-filter', 'n_clicks'),
    State('dropdown-container', 'children'))
def display_dropdowns(n_clicks, children):
    new_dropdown = dcc.Dropdown(
        id={
            'type': 'filter-dropdown',
            'index': n_clicks
        },
        options=[{'label': i, 'value': i} for i in ['NYC', 'MTL', 'LA', 'TOKYO']]
    )
    children.append(new_dropdown)
    return children
```

might become the following

```python
@app.callback(
    Output('dropdown-container', 'children'),
    Input('add-filter', 'n_clicks'),
    State('dropdown-container', 'children'))
def display_dropdowns(n_clicks, children):
    new_dropdown = html.Div(
        dcc.Dropdown(
            id={
                'type': 'filter-dropdown',
                'index': n_clicks
            },
            options=[{'label': i, 'value': i} for i in ['NYC', 'MTL', 'LA', 'TOKYO']]
        ),
        id=f"dropdown-wrapper-{n_clicks}"
    )
    new_tooltip = dbc.Tooltip(
        f"This is dropdown number {n_clicks}",
        target=f"dropdown-wrapper-{n_clicks}",
    )
    children.append(new_dropdown)
    children.append(new_tooltip)
    return children
```

The reason `Popover` and `Tooltip` can't support the dictionary-based `id` is that under the hood these components are searching for the `id` using a function called `querySelectorAll` implemented as part of the standard Web APIs. This function can only search for a valid CSS selector string, which is restricted more or less to alphanumeric characters plus hyphens and underscores. Dash serialises dictionary ids as JSON, which contains characters like `{` and `}` that are invalid in CSS selectors. The above workaround avoids this issue.

### How do I scale the viewport on mobile devices?

When building responsive layouts it is typical to have something like the following in your HTML template

```html
<meta name="viewport" content="width=device-width, initial-scale=1" />
```

this ensures that mobile devices don't rescale your content on small screens and lets you build mobile optimised layouts. See [here](https://developer.mozilla.org/en-US/docs/Mozilla/Mobile/Viewport_meta_tag) for a great explanation.

To achieve the same thing in Dash, use the `metas` keyword argument in the `Dash` constructor.

```python
app = dash.Dash(
    external_stylesheets=[dbc.themes.BOOTSTRAP],
    meta_tags=[
        {"name": "viewport", "content": "width=device-width, initial-scale=1"},
    ],
)
```

### How do I make the `Popover` wider?

Bootstrap sets the `max-width` of the popover in the `.popover` CSS class. You can overwrite this, either by using a local copy of Bootstrap CSS and editing the file, or by adding a snippet like the following to your `assets/` folder.

```css
.popover {
  max-width: 400px;
}
```

See the [Dash docs](https://dash.plotly.com/external-resources) for details on linking custom stylesheets.

### Using Bootstrap and `dash_table.DataTable` together

This is a historical problem that was fixed in Dash 1.18.1. If you are able to, the easiest fix to compatibility issues with `dash_table.DataTable` and _dash-bootstrap-components_ is to simply update Dash

```
pip install -U dash
```

If you have an older version of Dash and are unable to update, then read on for a workaround.

Bootstrap CSS defines a CSS class called `row`, which is a key part of the Bootstrap grid system. The `DataTable` component applies the `row` class to rows in the table, which causes a clash and breaks some of the formatting of the table. In particular the table can overflow its container, and dropdowns aren't rendered correctly.

The solution is to prevent the Bootstrap row styles from being applied to rows in the table. There are two ways to do this. The first way, which is maybe more convenient if you just have a single table, is to pass additional arguments to the `css` prop of `DataTable` like this

```python
DataTable(..., css=[{"selector": ".row", "rule": "margin: 0; display: block"}])
```

Alternatively, you can write the following custom CSS to apply the styles to all tables in your app.

```css
.dash-table-container .row {
  display: block;
  margin: 0;
}
```

See the [Dash docs](https://dash.plotly.com/external-resources) for details on linking custom stylesheets.

[issue]: https://github.com/facultyai/dash-bootstrap-components/issues/new?template=feature.md
