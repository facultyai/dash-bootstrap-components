---
title: Icons
---

# Icons

<p class="lead">Add Bootstrap Icons to enhance your application.</p>

As with the [CSS stylesheets](/docs/themes), _dash-bootstrap-components_ doesn't come with specific icon CSS included. This is to give you the freedom to use any icon library of your choice.

There are a number of different icon libraries available, which you can link to via CDN, or served locally depending on your needs. Details on how to link css can be found in the [Themes](/docs/themes) section.

## Packaged CDN links

Bootstrap have their own set of icons for use alongside their other components. There is excellent documentation on how to use them on the [Bootstrap website](https://icons.getbootstrap.com/#usage), and an example of them in use within Dash can be found in the [`alert` component](/docs/components/alert).

_dash-bootstrap-components_ contains a link to Bootstrap Icons so you can conveniently link to them in your app. The easiest way to do so is to use the `external_stylesheets` argument when instantiating your app.

In addition, we have included Bootstrap recommend icon package [Font Awesome](https://fontawesome.com/) (`icons.FONT_AWESOME`) to provide additional icons.

~~~bootstrap-tabs
Python

Links are available in the `dash_bootstrap_components.icons` submodule.

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.icons.BOOTSTRAP])
```
-----
R

Links are available in the `dbcIcons` list which is added to your namespace when you import `dashBootstrapComponents`.

```r
library(dash)
library(dashBootstrapComponents)

app <- Dash$new(external_stylesheets = dbcIcons$BOOTSTRAP)
```

-----
Julia

Links are available as part of the `dbc_icons` named tuple available in `DashBootstrapComponents`.

```julia
using Dash, DashBootstrapComponents

app = dash(external_stylesheets=[dbc_icons.BOOTSTRAP])
```

~~~