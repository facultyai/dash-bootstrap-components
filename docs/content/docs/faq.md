---
title: "FAQ"
date: 2020-02-29T18:15:13Z
draft: true
---

# Frequently asked questions

This page gathers some frequently asked questions and common issues.

Q. _How can I make sure content is scaled properly on mobile devices?_
A. One of the nice features of Bootstrap is that it is a mobile-first framework, and can be used to make responsive layouts (i.e. they will rearrange themselves depending on the size of the screen they are being viewed on).

Q. _I want to make a Bootstrap style `DatePickerSingle`, `Slider`, `Dropdown` etc. How can I do that?_
A. We intentionally didn't reimplement components that are available through _dash-core-components_. We do however maintain custom Bootstrap stylesheets which will restyle _dash-core-components_ to have a look that is more consistent with Bootstrap or Bootswatch styles.

To minimise the risk of unwanted side-effects, the Dash styles will only be applied to any component that is a child of a component with `className="dash-bootstrap"`. Here's a simple example

```python
app.layout = html.Div(dcc.DatePickerSingle(), className="dash-bootstrap")
```
