---
title: "Quickstart"
date: 2020-02-29T18:15:13Z
draft: false
---

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

To use _dash-bootstrap-components_ you must do two things:

- Link a Bootstrap v4 compatible stylesheet
- Incorporate _dash-bootstrap-components_ into your layout

### Linking a stylesheet

_dash-bootstrap-components_ doesn't come with CSS included. This is to give you the freedom to use any Bootstrap v4 stylesheet of your choice. This means however that in order for the components to be styled properly, you must link to a stylesheet yourself.

For convenience, links to [BootstrapCDN][bootstrapcdn] for standard Bootstrap and each Bootswatch theme are available through the `themes` module, which can be used as follows:

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])
```

For more information on how to link local or external CSS, check out the [Dash documentation][dash-docs-external].

### Build the layout

With CSS linked, you can start building your app's layout with our Bootstrap components. See our [_documentation_][docs-components] for a full list of available components, or try running this minimal example to get started.

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Alert("Hello Bootstrap!", color="success")

if __name__ == "__main__":
    app.run_server()
```

[dash-docs-external]: https:/dash.plot.ly/external-resources
[docs-components]: /l/components
[bootstrapcdn]: https://www.bootstrapcdn.com/
