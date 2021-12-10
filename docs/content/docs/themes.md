---
title: Themes
---

# Themes

<p class="lead">Customise your app by choosing from different Bootstrap and Bootswatch themes.</p>

_dash-bootstrap-components_ doesn't come with CSS included. This is to give you the freedom to use any Bootstrap v5 stylesheet of your choice, so you can achieve the look you want in your app.

You can link to a stylesheet served over a CDN, or serve CSS locally depending on your needs.

## Packaged CDN links

_dash-bootstrap-components_ contains links to Bootstrap and Bootswatch stylesheets hosted on [JSDelivr][jsdelivr] so you can conveniently link to one of them in your app. The easiest way to do so is to use the `external_stylesheets` argument when instantiating your app.

~~~bootstrap-tabs
Python

Links are available in the `dash_bootstrap_components.themes` submodule.

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])
```

This will link the standard Bootstrap stylesheet. To link one of the Bootswatch styles, such as [Cyborg](https://bootswatch.com/cyborg/) you would just change this to

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.CYBORG])
```
-----
R

Links are available in the `dbcThemes` list which is added to your namespace when you import `dashBootstrapComponents`.

```r
library(dash)
library(dashBootstrapComponents)

app <- Dash$new(external_stylesheets = dbcThemes$BOOTSTRAP)
```

This will link the standard Bootstrap stylesheet. To link one of the Bootswatch styles, such as [Cyborg](https://bootswatch.com/cyborg/) you would just change this to

```r
library(dash)
library(dashBootstrapComponents)

app <- Dash$new(external_stylesheets = dbcThemes$CYBORG)
```
-----
Julia

Links are available as part of the `dbc_themes` named tuple available in `DashBootstrapComponents`.

```julia
using Dash, DashBootstrapComponents

app = dash(external_stylesheets=[dbc_themes.BOOTSTRAP])
```

This will link the standard Bootstrap stylesheet. To link one of the Bootswatch styles, such as [Cyborg](https://bootswatch.com/cyborg/) you would just change this to

```julia
using Dash, DashBootstrapComponents

app = dash(external_stylesheets=[dbc_themes.CYBORG])
```
~~~

See the [available themes](#available-themes) for more.

## Manually linking to a CDN

Each theme such as is simply a BootstrapCDN URL stored as a string, so using the themes module is really equivalent to doing something like the following.

~~~bootstrap-tabs
Python

```python
BS = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
app = dash.Dash(external_stylesheets=[BS])
```
-----
R

```r
BS <- "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
app <- Dash$new(external_stylesheets = BS)
```
-----
Julia

```julia
BS = "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
app = dash(external_stylesheets=[BS])
```
~~~

You can change this URL to anything you like, for example if you prefer to use a mirror or a different CDN to supply the stylesheet.

## Linking local CSS

You can [download][bootstrap-download] a stylesheet and serve it locally if you prefer. This might be desirable if you are restricted by a firewall or if you want to modify the stylesheet or even [compile your own][bootstrap-compile]. There are tools online to help with this, we recommend [Bootstrap Build](https://bootstrap.build/app).

The easiest way to link a local stylesheet is to place it in a folder named `assets/` in the root of the app directory. See the [Dash documentation][dash-docs-external] for more details on this.

<h2 id="available-themes">Available themes</h2>

There are numerous free to use Bootstrap stylesheets available on the web. The `dash_bootstrap_components.themes` module contains CDN links for Bootstrap and all of the [Bootswatch themes][bootswatch]. Bootstrap also maintains its own [themes website][bootstrap-themes] which lists a number of free and premium themes that you could incorporate into your apps.

To start with, we recommend experimenting with some of the Bootswatch themes available in the `dash_bootstrap_components.themes` module. The full list of available themes is [`CERULEAN`](https://bootswatch.com/cerulean/), [`COSMO`](https://bootswatch.com/cosmo/), [`CYBORG`](https://bootswatch.com/cyborg/), [`DARKLY`](https://bootswatch.com/darkly/), [`FLATLY`](https://bootswatch.com/flatly/), [`JOURNAL`](https://bootswatch.com/journal/), [`LITERA`](https://bootswatch.com/litera/), [`LUMEN`](https://bootswatch.com/lumen/), [`LUX`](https://bootswatch.com/lux/), [`MATERIA`](https://bootswatch.com/materia/), [`MINTY`](https://bootswatch.com/minty/), [`MORPH`](https://bootswatch.com/morph/), [`PULSE`](https://bootswatch.com/pulse/), [`QUARTZ`](https://bootswatch.com/quartz/), [`SANDSTONE`](https://bootswatch.com/sandstone/), [`SIMPLEX`](https://bootswatch.com/simplex/), [`SKETCHY`](https://bootswatch.com/sketchy/), [`SLATE`](https://bootswatch.com/slate/), [`SOLAR`](https://bootswatch.com/solar/), [`SPACELAB`](https://bootswatch.com/spacelab/), [`SUPERHERO`](https://bootswatch.com/superhero/), [`UNITED`](https://bootswatch.com/united/), [`VAPOR`](https://bootswatch.com/vapor/), [`YETI`](https://bootswatch.com/yeti/), [`ZEPHYR`](https://bootswatch.com/zephyr/).

Check out the [theme explorer](/docs/themes/explorer/) for a live demo of dash-bootstrap-components using all of the different available themes. You may also like to check out the [dash-bootstrap-css](https://github.com/tcbegley/dash-bootstrap-css) project which contains Bootstrap stylesheets that apply consistent styling to various components from dash-core-components.

[dash-docs-external]: https://dash.plotly.com/external-resources/
[bootstrap]:https://getbootstrap.com/
[bootstrap-download]: https://getbootstrap.com/docs/5.0/getting-started/download/
[bootstrap-compile]: https://getbootstrap.com/docs/5.0/customize/overview/
[bootswatch]: https://bootswatch.com/
[bootswatch-themes]: https://www.bootstrapcdn.com/bootswatch/
[jsdelivr]: https://www.jsdelivr.com/
