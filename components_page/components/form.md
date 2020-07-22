---
title: Forms
lead: Use Bootstrap's form components to control the layout and style of your input components.
---

When building Dash apps we rarely make use of HTML forms, instead attaching callbacks to input components. However, Bootstrap's form components can still be a powerful way to control the layout of a collection of input components. We demonstrate a number of layout options below.

## Simple example

The `FormGroup` is the easiest way to add structure to forms. It encourages proper grouping of labels, controls, optional help text, and form validation messaging. See this simple example.

{{example:components/form/simple.py:form}}

## Horizontal form

Create a horizontal form by setting `row=True` on the `FormGroup` component. Be sure to specify `width` on the `Label` component, and wrap your inputs in `Col` components.

{{example:components/form/row.py:form}}

## Using grid layout with forms

You can also use the grid components `Row` and `Col` to build more complex layouts. You can set `form=True` in the `Row` component to reduce the size of the column gutters for tighter, more compact layouts.

{{example:components/form/grid.py:form}}

## Inline form

You can use the `Form` component with `inline=True` to display a series of labels, controls and buttons on a single horizontal row. Use [Bootstrap's spacing utilities](https://getbootstrap.com/docs/4.3/utilities/spacing/) as we have below to control the spacing between components in the inline form.

{{example:components/form/inline.py:form}}

## Form feedback

Use the `valid` and `invalid` properties of `Input`, alongside the `FormFeedback` component to give actionable feedback for user supplied inputs.

The `Input` component has two properties, `valid` and `invalid`, that can be set in callbacks. They can be used to indicate whether the input value is valid or invalid. When `valid=True`, the `Input` will be styled with a green colored border, similarly when `invalid=True` the input will be styled with a red colored border.

The `FormFeedback` component should be added to the `FormGroup` containing the `Input` it is associated with. Use the `valid` property to indicate whether the feedback should display for valid or invalid inputs. The feedback automatically display when the validity of the `Input` in the `FormGroup` matches that of the `FormFeedback`. This is perhaps easiest to see with an example such as the below.

{{example:components/form/feedback.py:email_input}}

## Dash Core Components

The `Form` and `FormGroup` components can also be used with _dash-core-components_.

{{example:components/form/dash_core.py:form}}

{{apidoc:src/components/form/Form.js}}

{{apidoc:src/components/form/FormGroup.js}}

{{apidoc:src/components/form/FormText.js}}

{{apidoc:src/components/form/FormFeedback.js}}

{{apidoc:src/components/Label.js}}
