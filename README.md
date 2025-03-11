<p align="center">
  <a href="https://dash-bootstrap-components.opensource.faculty.ai/">
    <img src="https://cdn.jsdelivr.net/gh/facultyai/dash-bootstrap-components@main/readme-images/logo.png" alt="dash-bootstrap-components logo" width="200" height="200">
  </a>
</p>

<h3 align="center">Dash Bootstrap Components</h3>

<p align="center">
  Bootstrap components for Plotly Dash
  <br>
  <a href="https://dash-bootstrap-components.opensource.faculty.ai/">Explore the documentation</a>
  ·
  <a href="https://github.com/facultyai/dash-bootstrap-components/issues/new?template=bug.md">Report a bug</a>
  ·
  <a href="https://github.com/facultyai/dash-bootstrap-components/issues/new?template=feature.md">Request a feature</a>
  <br>
  <br>
  <img alt="GitHub Actions" src="https://github.com/facultyai/dash-bootstrap-components/actions/workflows/tests.yml/badge.svg">
  <img alt="GitHub" src="https://img.shields.io/github/license/facultyai/dash-bootstrap-components">
  <img alt="PyPI" src="https://img.shields.io/pypi/v/dash-bootstrap-components">
  <img alt="Conda (channel only)" src="https://img.shields.io/conda/vn/conda-forge/dash-bootstrap-components">
  <img alt="PyPI - Python Version" src="https://img.shields.io/pypi/pyversions/dash-bootstrap-components">
</p>

_dash-bootstrap-components_ is a library of [Bootstrap][bootstrap-homepage]
components for use with [Plotly Dash][dash-homepage], that makes it easier to
build consistently styled Dash apps with complex, responsive layouts.

## Table of contents

- [Installation](#installation)
- [Quick start](#quick-start)
- [Contributing](#contributing)
- [Copyright and license](#copyright-and-license)

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

## Quick start

To use _dash-bootstrap-components_ you must do two things:

- Link a Bootstrap v5 compatible stylesheet
- Incorporate _dash-bootstrap-components_ into your layout

### Linking a stylesheet

_dash-bootstrap-components_ doesn't come with CSS included. This is to give you
the freedom to use any Bootstrap v5 stylesheet of your choice. This means
however that in order for the components to be styled properly, you must link
to a stylesheet yourself.

For convenience, links to [BootstrapCDN][bootstrapcdn] for each theme are
available through the `themes` module, which can be used as follows:

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])
```

For more information on how to link local or external CSS, check out the
[Dash documentation][dash-docs-external].

### Build the layout

With CSS linked, you can start building your app's layout with our Bootstrap
components. These include layout components for organising the content of your app on the page, as well as UI components like navbars, cards, alerts and many more.

![layout](https://cdn.jsdelivr.net/gh/facultyai/dash-bootstrap-components@main/readme-images/layout.png)

See our [_documentation_][docs-components] for a full list of available
components.

## Contributing

We welcome contributions to _dash-bootstrap-components_. If you find a bug or
something is unclear please [submit a bug report][bug-report], if you have ideas
for new features please feel free to make a [feature request][feature-request].

If you would like to submit a pull request, please read our
[contributing guide][contribution-guide], which contains instructions on how to
build and install _dash-bootstrap-components_ locally, how to check your code
will pass our linting checks, and how to submit the pull request itself.

## Copyright and license

Code and documentation is copyright [Faculty Science Ltd.][faculty]
2018-2025, and released under the [Apache 2.0 license](https://github.com/facultyai/dash-bootstrap-components/blob/main/LICENSE)

[dash-homepage]: https://dash.plotly.com/
[dash-docs-external]: https://dash.plotly.com/external-resources
[bootstrap-homepage]: https://getbootstrap.com/
[docs-components]: https://dash-bootstrap-components.opensource.faculty.ai/l/components
[bootstrapcdn]: https://www.bootstrapcdn.com/
[faculty]: https://faculty.ai
[bug-report]: https://github.com/facultyai/dash-bootstrap-components/issues/new?template=bug.md
[feature-request]: https://github.com/facultyai/dash-bootstrap-components/issues/new?template=feature.md
[contribution-guide]: https://github.com/facultyai/dash-bootstrap-components/blob/main/.github/CONTRIBUTING.md
