---
title: Components
lead: Usage examples for all components in dash-bootstrap-components
---

The component documentation for _dash-bootstrap-components_ contains many snippets showing example usage, as well as API documentation for each component explaining the different props that you can set.

Example snippets for the different components will look something like this, with tabs to switch between R or Julia versions of the examples.

{{example:components/badge/simple.py:badge}}

When code snippets are included in the description to explain a particular behaviour, this will only include the python version for brevity. So for example, it may talk about including `is_open=True` which is valid in python, but would need translating to `is_open=TRUE` in R or `is_open=true` in Julia. If you are using R or Julia, we strongly suggest looking at the given examples if you are unsure how to translate the code provided in the description.

## Adding the snippets to your app

Note that the contents of each snippet **do not by themselves constitute a working app**. We generally omit boilerplate code such as standard imports and instantiation of the app. In the above example you would additionally need to:

1. Import Dash.
2. Create a Dash app instance (making sure to link a Bootstrap stylesheet, see the [themes documentation](/docs/themes/) for details).
3. Add the example to the app's layout.
4. Start the Dash server.

For example, a simple application incorporating example above could look like this, where we wrap the snippet in a container and add it to the layout.

{{code-example:components/index/simple.py}}

There is more detail on this in the [Quickstart](/docs/quickstart/) instructions for creating a basic app. Additionally, the [examples](https://github.com/facultyai/dash-bootstrap-components/tree/main/examples) in our GitHub repository demonstrate how multiple components can be combined to create a feature rich application.

For more details on Dash in general, please refer to the official Dash documentation for [Python](https://dash.plotly.com/), [R](https://dash.plotly.com/r/), or [Julia](https://dash.plotly.com/julia/).
