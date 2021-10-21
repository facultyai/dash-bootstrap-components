---
title: Icons
---

# Icons

<p class="lead">Add icons to enhance your application.</p>

As with the [CSS stylesheets](/docs/themes), _dash-bootstrap-components_ doesn't come pre-bundled with icons. This is to give you the freedom to use any icon library of your choice.

There are a number of different icon libraries available, which you can link to via CDN, or serve locally depending on your needs. Details on how to link css can be found in the [themes](/docs/themes) documentation.

## Packaged CDN links

_dash-bootstrap-components_ contains CDN links for [Bootstrap Icons](https://icons.getbootstrap.com/) and [Font Awesome](https://fontawesome.com/), two libraries of icons you can use in your apps. You can use either of them by adding them to `external_stylesheets` when instantiating your app.

Bootstrap Icons was developed by the Bootstrap team specifically for use with Bootstrap. There is excellent documentation on how to use them on the [Bootstrap website](https://icons.getbootstrap.com/#usage), and a small example below.

Font Awesome is perhaps the most widely used icon library and is very commonly used with Bootstrap. Usage is similar to Bootstrap Icons, check [their documentation](https://fontawesome.com/v5.15/how-to-use/on-the-web/referencing-icons/basic-use) for more details.

~~~bootstrap-tabs
Python

Links are available in the `dash_bootstrap_components.icons` submodule.

```python
import dash
import dash_bootstrap_components as dbc

# For Bootstrap Icons...
app = dash.Dash(
    external_stylesheets=[dbc.themes.BOOTSTRAP, dbc.icons.BOOTSTRAP]
)
# Or for Font Awesome Icons...
app = dash.Dash(
    external_stylesheets=[dbc.themes.BOOTSTRAP, dbc.icons.FONT_AWESOME]
)

```
-----
R

Links are available in the `dbcIcons` list which is added to your namespace when you import `dashBootstrapComponents`.

```r
library(dash)
library(dashBootstrapComponents)

# For Bootstrap Icons...
app <- Dash$new(
    external_stylesheets = list(dbcThemes$BOOTSTRAP, dbcIcons$BOOTSTRAP)
)
# Or for Font Awesome Icons...
app <- Dash$new(
    external_stylesheets = list(dbcThemes$BOOTSTRAP, dbcIcons$FONT_AWESOME)
)
```

-----
Julia

Links are available as part of the `dbc_icons` named tuple available in `DashBootstrapComponents`.

```julia
using Dash, DashBootstrapComponents

# For Bootstrap Icons...
app = dash(
    external_stylesheets=[dbc_themes.BOOTSTRAP, dbc_icons.BOOTSTRAP]
)
# Or for Font Awesome Icons...
app = dash(
    external_stylesheets=[dbc_themes.BOOTSTRAP, dbc_icons.FONT_AWESOME]
)
```
~~~

## Example

This simple example adds Bootstrap Icons to some alerts.

~~~bootstrap-example-tabs
<div>
    <div class="alert alert-info d-flex align-items-center">
    <i class="bi bi-info-circle-fill me-2"></i>
    An example info alert with an icon
    </div>
    <div class="alert alert-success d-flex align-items-center">
    <i class="bi bi-check-circle-fill me-2"></i>
    An example success alert with an icon
    </div>
    <div class="alert alert-warning d-flex align-items-center">
    <i class="bi bi-exclamation-triangle-fill me-2"></i>
    An example warning alert with an icon
    </div>
    <div class="alert alert-danger d-flex align-items-center">
    <i class="bi bi-x-octagon-fill me-2"></i>
    An example danger alert with an icon
    </div>
</div>
-----
Python

```python
import dash_bootstrap_components as dbc
import dash_html_components as html

alerts = html.Div(
    [
        dbc.Alert(
            [
                html.I(className="bi bi-info-circle-fill me-2"),
                "An example info alert with an icon",
            ],
            color="info",
            className="d-flex align-items-center",
        ),
        dbc.Alert(
            [
                html.I(className="bi bi-check-circle-fill me-2"),
                "An example success alert with an icon",
            ],
            color="success",
            className="d-flex align-items-center",
        ),
        dbc.Alert(
            [
                html.I(className="bi bi-exclamation-triangle-fill me-2"),
                "An example warning alert with an icon",
            ],
            color="warning",
            className="d-flex align-items-center",
        ),
        dbc.Alert(
            [
                html.I(className="bi bi-x-octagon-fill me-2"),
                "An example danger alert with an icon",
            ],
            color="danger",
            className="d-flex align-items-center",
        ),
    ]
)
```
-----
R

```r
library(dashBootstrapComponents)
library(dashHtmlComponents)

alerts <- htmlDiv(
  list(
    dbcAlert(
      list(
        htmlI(className = "bi bi-info-circle-fill me-2"),
        "An example info alert with an icon"
      ),
      color = "info",
      className = "d-flex align-items-center"
    ),
    dbcAlert(
      list(
        htmlI(className = "bi bi-check-circle-fill me-2"),
        "An example success alert with an icon"
      ),
      color = "success",
      className = "d-flex align-items-center"
    ),
    dbcAlert(
      list(
        htmlI(className = "bi bi-exclamation-triangle-fill me-2"),
        "An example warning alert with an icon"
      ),
      color = "warning",
      className = "d-flex align-items-center"
    ),
    dbcAlert(
      list(
        htmlI(className = "bi bi-x-octagon-fill me-2"),
        "An example danger alert with an icon"
      ),
      color = "danger",
      className = "d-flex align-items-center"
    )
  )
)
```

-----
Julia

```julia
using DashBootstrapComponents, DashHtmlComponents

alerts = html_div([
    dbc_alert(
        [
            html_i(className = "bi bi-info-circle-fill me-2"),
            "An example info alert with an icon",
        ],
        color = "info",
        className = "d-flex align-items-center",
    ),
    dbc_alert(
        [
            html_i(className = "bi bi-check-circle-fill me-2"),
            "An example success alert with an icon",
        ],
        color = "success",
        className = "d-flex align-items-center",
    ),
    dbc_alert(
        [
            html_i(className = "bi bi-exclamation-triangle-fill me-2"),
            "An example warning alert with an icon",
        ],
        color = "warning",
        className = "d-flex align-items-center",
    ),
    dbc_alert(
        [
            html_i(className = "bi bi-x-octagon-fill me-2"),
            "An example danger alert with an icon",
        ],
        color = "danger",
        className = "d-flex align-items-center",
    ),
])
```
~~~
