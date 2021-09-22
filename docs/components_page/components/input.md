---
title: Input components
lead: Documentation and examples for input components in _dash-bootstrap-components_.
---

_dash-bootstrap-components_ has its own versions of some of the input components available in _dash-core-components_. They have been designed to share the same interface as the corresponding components in _dash-core-components_ for familiarity, but have a few additional Bootstrap specific features.

## Examples

The input component allows for text or numeric input, its basic usage is the same as `dcc.Input`, but Bootstrap styles will be applied for you.

{{example:components/input/simple.py:text_input}}

## Number inputs

When using `Input` with `type='number'`, the `value` prop will be given the value `None` if a non-numeric input is given, or if the number falls out of the range specified by `min` and `max`. If you are using _dash-core-components_, it will inject some CSS that adds a red outline to `input` elements with the `:invalid` pseudo-class. You can write your own custom CSS to override this and apply styles more consistent with Bootstrap if you like. Take the following example where we wrap the `Input` component in a component with a particular `id` that we then target with the CSS selector.

```css
#styled-numeric-input input:invalid {
  border-color: #dc3545;
  padding-right: calc(1.5em + 0.75rem);
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 12 12' width='12' height='12' fill='none' stroke='%23dc3545'%3e%3ccircle cx='6' cy='6' r='4.5'/%3e%3cpath stroke-linejoin='round' d='M5.8 3.6h.4L6 6.5z'/%3e%3ccircle cx='6' cy='8.2' r='.6' fill='%23dc3545' stroke='none'/%3e%3c/svg%3e");
  background-repeat: no-repeat;
  background-position: right calc(0.375em + 0.1875rem) center;
  background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
  outline: none;
}
```

{{example:components/input/number_input.py:number_input}}

## Labels and text

Use the `Label` and `FormText` components to add additional information about the `Input` to your layout. See the [documentation for forms](/docs/components/form/) for more details.

{{example:components/input/text_label.py:text_input}}

## Input size

You can control the size of the `Input` using the `size` keyword argument. It accepts the values `sm`, `md` or `lg` for small, medium or large sizes respectively. If you want to set the HTML size attribute of the underlying `<input>` use the `html_size` keyword argument.

{{example:components/input/size.py:inputs}}

## Input validation

Add valid / invalid styles to your `Input` components using the `valid` and `invalid` keyword arguments.

{{example:components/input/validation.py:inputs}}

## Textarea

The `Textarea` component works like the _dash-core-components_ analogue, but accepts the additional arguments `valid`, `invalid`, and `size` much like `Input`.

{{example:components/input/textarea.py:textareas}}

## Select

The `Select` component can be used to render a Bootstrap themed select input. The options are specified with a list of dictionaries much like the `Dropdown` component in _dash-core-components_, i.e. with keys `'label'`, `'value'` and optional key `'disabled'`. Like `Input` it also accepts keyword arguments such as `size`, `valid`, `invalid`, all of which can be targeted with callbacks.

{{example:components/input/select.py:select}}

## RadioItems and Checklist

`RadioItems` and `Checklist` components also work like _dash-core-components_. Provided you specify an `id`, _dash-bootstrap-components_ will render custom themed radio buttons or checkboxes rather than using the native browser buttons. When using `Checklist` you can also specify `switch=True` to render toggle-like switches rather than checkboxes. If you prefer to use the native buttons and checkboxes, set `custom=False`. Note that there is no native browser switch, so if you set `custom=False` then `switch` will be ignored.

{{example:components/input/radio_check.py:inputs}}

Set `inline=True` to make the radio items or checklists fit next to each other on a line.

{{example:components/input/radio_check_inline.py:inline_inputs}}

## Checked item styles

Use the `input_checked_style`, `inputCheckedClassName`, `label_checked_style` and `labelCheckedClassName` arguments to apply different styles to the labels of checked items.

{{example:components/input/selected_styles.py:checklist}}

## Standalone checkboxes, toggle switches and radio buttons

If you need more granular control over checkboxes and radio buttons, you can also create standalone components. Bind callbacks to the `value` keyword to react to changes in the input state. Bind the `label` to the checkbox, switch or radio button by specifying an `id`.

{{example:components/input/radio_check_standalone.py:standalone_radio_check}}

## Color picker

When using `Input` with `type="color"`, the user may specify a color, either by using a visual color picker or by entering the color in a text field in #rrggbb format.

Note that the color picker presentation may vary substantially from one browser and/or platform to another.

As you drag the selector around the color picker, notice that the text color is smoothly updated. While this is a nice feature, it may cause a performance issue in your app, because the callback fires continuously.

This is a great use-case for a [Dash clientside callback](https://dash.plotly.com/clientside-callbacks). This example uses a clientside callback so the callback runs directly in the browser instead of making requests to the Dash server. For your reference, the regular Dash callback is shown as a comment.

{{example:components/input/colorpicker.py:colorpicker}}

{{apidoc:src/components/input/Input.js}}

{{apidoc:src/components/input/Textarea.js}}

{{apidoc:src/components/input/Select.js}}

{{apidoc:src/components/input/RadioItems.js}}

{{apidoc:src/components/input/Checklist.js}}

{{apidoc:src/components/input/Checkbox.js}}

{{apidoc:src/components/input/RadioButton.js}}
