---
title: Components
lead: Usage examples for all components in dash-bootstrap-components
---

The component documentation for _dash-bootstrap-components_ contains many snippets showing example usage, as well as api documentation for each component explaining the different props that you can set.

Example snippets for the different components will look something like this, with tabs to switch between R or Julia versions of the examples.

{{example:components/index/simple.py:layout}}

## Adding the snippets to your app

Note that the contents of each snippet **do not by themselves constitute a working app**. We generally omit boilerplate code such as standard imports and instantiation of the app. In the above example you would additionally need to:

1. import Dash
2. create a Dash app instance (making sure to link a Bootstrap stylesheet, see the [themes documentation](/docs/themes/) for details)
3. assign `layout` to the app layout
4. start the Dash server.

If any of the above steps are unclear, please take a look at the [Quickstart](/docs/quickstart/) instructions for creating a basic app, the [examples](https://github.com/facultyai/dash-bootstrap-components/tree/main/examples) in our GitHub repository, or refer to the official Dash documentation for [Python](https://dash.plotly.com/), [R](https://dashr.plotly.com/), or [Julia](https://dash-julia.plotly.com/).
