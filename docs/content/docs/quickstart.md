---
title: Quickstart
---

# Quickstart

<p class="lead">Installation instructions and basic usage.</p>

## Installation

### PyPI

You can install _dash-bootstrap-components_ with `pip`:

```sh
pip install dash-bootstrap-components
```

### Anaconda

You can also install _dash-bootstrap-components_ with `conda` through the
conda-forge channel:

```sh
conda install -c conda-forge dash-bootstrap-components
```

## Basic usage

_dash-bootstrap-components_ is a component library for use with Plotly Dash. If you have not used Dash before, it's strongly recommended you check out [the Dash documentation][dash-docs] and try building a basic app first.

To use _dash-bootstrap-components_ you must do two things:

- Link a Bootstrap v5 compatible stylesheet
- Incorporate _dash-bootstrap-components_ into the layout of your app.

### Linking a stylesheet

_dash-bootstrap-components_ doesn't come with CSS included. This is to give you the freedom to use any Bootstrap v5 stylesheet of your choice. This means however that in order for the components to be styled properly, you must link to a stylesheet yourself.

For convenience, CDN links to [JSDelivr][jsdelivr] for standard Bootstrap and each Bootswatch theme are available as part of _dash-bootstrap-components_ within the `dbc.themes` submodule and can be used when instantiating the `app` object.

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])
```

For more information on available themes see the [themes documentation][docs-themes]

### Build the layout

With CSS linked, you can start building your app's layout with our Bootstrap components. See the [component documentation][docs-components] for a full list of available components, or try running this minimal example to get started.

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Container(
    dbc.Alert("Hello Bootstrap!", color="success"),
    className="p-5",
)

if __name__ == "__main__":
    app.run_server()
```

## Examples

Check out these [example apps][examples] made with _dash-bootstrap-components_.

[dash-docs]: https://dash.plotly.com
[dash-docs-external]: https://dash.plotly.com/external-resources
[docs-themes]: /docs/themes
[docs-icons]: /docs/icons
[docs-components]: /docs/components
[jsdelivr]: https://www.jsdelivr.com/
[examples]: /examples
