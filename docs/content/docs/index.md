---
title: "Dash Bootstrap Components Docs"
date: 2020-02-29T18:15:13Z
draft: true
---

You've found the documentation for Dash Bootstrap Components! Read the [Quick Start](/docs/quickstart), check out the [available components](/l/components) or check out the [examples](/examples).

```python
import dash
import dash_bootstrap_components as dbc

app = dash.Dash(external_stylesheets=[dbc.themes.BOOTSTRAP])

app.layout = dbc.Button("Click me!")

if __name__ == "__main__":
    app.run_server()
```
