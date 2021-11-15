---
title: Forms
lead: Use Bootstrap's form components to control the layout and style of your input components.
---

## Examples

When building Dash apps we rarely make use of HTML forms, instead attaching callbacks to input components. However, Bootstrap's form components can still be a powerful way to control the layout of a collection of input components. We demonstrate a number of layout options below.

Bootstrap's form components can be used to group labels, controls, optional help text, and form validation messaging. See this simple example.

{{example:components/form/simple.py:form}}


## Floating labels

Wrap an `Input` and `Label` with `FormFloating` to create a label that floats over the form field. Note that you _must_ set a placeholder on the `Input` in order for the floating label to display properly.

{{example:components/form/floating.py:form}}
## Horizontal form

Create a horizontal form by using the `Row` component. Be sure to specify `width` on the `Label` component, and wrap your inputs in `Col` components.

{{example:components/form/row.py:form}}

## Using grid layout with forms

You can also use the grid components `Row` and `Col` to build more complex layouts. You can use Bootstrap's [gutter modifier classes](https://getbootstrap.com/docs/5.1/layout/gutters/) to adjust the spacing between the form components.

{{example:components/form/grid.py:form}}

## Inline form

Similarly using `Row` and `Col` you can create a fully inline form. Set `width="auto"` on the `Label` components to make sure they resize to take up only the width of the label text. Use Bootstrap's [gutter modifier classes](https://getbootstrap.com/docs/5.1/layout/gutters/) and [spacing utilities](https://getbootstrap.com/docs/5.0/utilities/spacing/) as we have below to control the spacing between components in the inline form.

{{example:components/form/inline.py:form}}

## Form feedback

Use the `valid` and `invalid` properties of `Input`, alongside the `FormFeedback` component to give actionable feedback for user supplied inputs.

The `Input` component has two properties, `valid` and `invalid`, that can be set in callbacks. They can be used to indicate whether the input value is valid or invalid. When `valid=True`, the `Input` will be styled with a green colored border, similarly when `invalid=True` the input will be styled with a red colored border.

The `FormFeedback` component should be added to a `html.Div` containing the `Input` it is associated with. Use the `type` property to indicate whether the feedback should display for valid or invalid inputs, it accepts the strings `"valid"` or `"invalid"`. The feedback automatically displays when the validity of the `Input` in the `html.Div` matches that of the `FormFeedback`. This is perhaps easiest to see with an example such as the below.

{{example:components/form/feedback.py:email_input}}

## Dash Core Components

`Form` and other components can also be used with _dash-core-components_.

{{example:components/form/dash_core.py:form}}

{{apidoc:src/components/form/Form.js}}

{{apidoc:src/components/form/FormFloating.js}}

{{apidoc:src/components/form/FormText.js}}

{{apidoc:src/components/form/FormFeedback.js}}

{{apidoc:src/components/Label.js}}
