---
title: Quickstart
---

# Quickstart

<p class="lead">Installation instructions and basic usage.</p>

## Installation

_dash-bootstrap-components_ can be used with Dash in Python, R or Julia.

~~~bootstrap-tabs
Python
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
-----
R
To get started make sure you have [installed Dash for R](https://dashr.plotly.com/installation). If you didn't already install it in order to install Dash for R, we also need to make sure that the _devtools_ library is installed.

```r
install.packages("devtools")
```

You can then install _dash-bootstrap-components_ from the `r-release` branch of our GitHub repository.

```r
library(devtools)
install_github('facultyai/dash-bootstrap-components@r-release')
```

The `r-release` branch will always point to the latest R release. If you want a specific version you can install it by referencing with a tag of the form `rX.X.X` where `X.X.X` is the desired version number. For example to install version `0.10.0` you could do

```r
library(devtools)
install_github('facultyai/dash-bootstrap-components@r0.10.0')
```
-----
Julia
To get started make sure you have [installed Dash.jl](https://dash-julia.plotly.com/installation). You can then install `DashBootstrapComponents` as follows

```julia-repl
pkg> add DashBootstrapComponents
```

Or alternatively you can install from source as follows

```julia-repl
julia> using Pkg;
julia> Pkg.add(PackageSpec(
           url="https://github.com/facultyai/dash-bootstrap-components", rev="julia-release",
       ))
```
~~~

## Basic usage

_dash-bootstrap-components_ is a component library for use with Plotly Dash. If you have not used Dash before, it's strongly recommended you check out [the Dash documentation][dash-docs] and try building a basic app first.

To use _dash-bootstrap-components_ you must do two things:

- Link a Bootstrap v4 compatible stylesheet
- Incorporate _dash-bootstrap-components_ into the layout of your app.

### Linking a stylesheet

_dash-bootstrap-components_ doesn't come with CSS included. This is to give you the freedom to use any Bootstrap v4 stylesheet of your choice. This means however that in order for the components to be styled properly, you must link to a stylesheet yourself.

For convenience, links to [BootstrapCDN][bootstrapcdn] for standard Bootstrap and each Bootswatch theme are available as part of _dash-bootstrap-components_ and can be used as follows

~~~bootstrap-tabs
Python
In Python, each CDN link is available within the `dbc.themes` submodule and can
be used when instantiating the `app` object.

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])
```
-----
R
Once you have imported _dash-bootstrap-components_ with
`library(dashBootstrapComponents)`, the `dbcThemes` list will be loaded into
your global namespace and can be used when instantiating the `app` object.


```r
library(dash)
library(dashBootstrapComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)
```
-----
Julia

```julia
using Dash, DashBootstrapComponents

app = dash(external_stylesheets=[dbc_themes.BOOTSTRAP])
```
~~~

For more information on available themes see the [themes documentation][docs-themes]

### Build the layout

With CSS linked, you can start building your app's layout with our Bootstrap components. See the [component documentation][docs-components] for a full list of available components, or try running this minimal example to get started.

~~~bootstrap-tabs
Python
This is a minimal Dash app written in Python.

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
-----
R
This is a minimal Dash app written in R.

```r
library(dash)
library(dashBootstrapComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)

app$layout(dbcContainer(dbcAlert("Hello Bootstrap!", color = "success"),
                        className = "p-5"))

app$run_server(showcase = TRUE)
```
-----
Julia
This is a minimal Dash app written in Julia.

```julia
using Dash, DashBootstrapComponents

app = dash(external_stylesheets=[dbc_themes.BOOTSTRAP])

app.layout = dbc_container(
    dbc_alert("Hello Bootstrap!", color="success"),
    className="p-5",
)

run_server(app, "0.0.0.0", 8080)
```
~~~

## Examples

Check out these [example apps][examples] made with _dash-bootstrap-components_.

[dash-docs]: https://dash.plotly.com
[dash-docs-external]: https://dash.plotly.com/external-resources
[docs-themes]: /docs/themes
[docs-components]: /docs/components
[bootstrapcdn]: https://www.bootstrapcdn.com/
[examples]: /examples
