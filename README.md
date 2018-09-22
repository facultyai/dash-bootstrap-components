# dash-bootstrap-components

This package provides [Bootstrap][bs-homepage] components for use in [Plotly Dash][dash-homepage]. It is built on top of [reactstrap][reactstrap-homepage].

## Installation

`dash-bootstrap-components` is hosted on PyPI, and can be installed by running

```
pip install dash-bootstrap-components
```

## Usage

`dash-bootstrap-components` uses Bootstrap CSS classes to style its components, but Bootstrap CSS is not bundled with the python package. This is so that users are able to compile Bootstrap CSS themselves and override defaults to acheive the styling they want. Consequently when using `dash-bootstrap-components` in your dashboard, you must link the CSS you wish to use yourself. There are multiple ways of doing this.

### Link local copy of Bootstrap CSS

You can download compiled Bootstrap CSS from the [Bootstrap website][bs-download], there's also a copy in the `examples` directory of the `dash-bootstrap-components` [repository][dbc-repo].

Alternatively you can [download the source files][bs-source] and compile them yourself. This lets you override default styling such as colours and margin sizes.

Once you have a copy of Bootstrap CSS, create a folder called `assets` in the root of your app directory and place the CSS inside. Your Dash app will then automatically serve and link any stylesheets saved in this directory.

### Use Bootstrap CDN

If you prefer not to work with a local copy of the CSS and are happy with Bootstrap defaults you can use the [Bootstrap CDN][bs-cdn]. You can either use the `external_stylesheets` keyword argument in the `dash.Dash` constructor, or add a link to your app's HTML index template. For more details, check the Plotly Dash [user guide][dash-ext-res].

Documentation of the components available in `dash-bootstrap-components` is upcoming, for now you can see some examples in the `examples` directory.

[dash-homepage]: https://dash.plot.ly/
[dash-ext-res]: https://dash.plot.ly/external-resources
[bs-homepage]: https://getbootstrap.com/
[bs-download]: https://getbootstrap.com/docs/4.1/getting-started/download/
[bs-source]: https://getbootstrap.com/docs/4.1/getting-started/download/#source-files
[bs-cdn]: https://getbootstrap.com/docs/4.1/getting-started/download/#bootstrapcdn
[dbc-repo]: https://github.com/ASIDataScience/dash-bootstrap-components
[reactstrap-homepage]: https://reactstrap.github.io/
