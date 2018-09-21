# dash-bootstrap-components

This package provides bootstrap components for use in Plotly Dash.

## Installation

`dash-bootstrap-components` is hosted on PyPI, and can be installed by running

```
pip install dash-bootstrap-components
```

## Usage

`dash-bootstrap-components` does not come bundled with Bootstrap CSS to style
the components. This is so that users are able to compile Bootstrap CSS
themselves and override defaults to acheive the styling they want. Consequently
when using `dash-bootstrap-components` in your dashboard, you must link the CSS
you wish to use yourself. There are numerous ways to do this, the simplest is to
create a folder called `assets` in the root of your app directory and add the
Bootstrap CSS file. Your Dash app will then automatically serve and link any
stylesheets saved in this directory.

For more information, or alternative ways to link CSS, check the Plotly Dash
[user guide](https://dash.plot.ly/external-resources).

Documentation of the components available in `dash-bootstrap-components` is
upcoming, for now you can see some examples in the `examples directory`.
