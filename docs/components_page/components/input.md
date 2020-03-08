---
title: Input components
lead: Documentation and examples for input components in _dash-bootstrap-components_.
---

_dash-bootstrap-components_ has its own versions of some of the input components available in _dash-core-components_. They have been designed to share the same interface as the corresponding components in _dash-core-components_ for familiarity, but have a few additional Bootstrap specific features.

## Input

The input component allows for text or numeric input, its basic usage is the same as `dcc.Input`, but Bootstrap styles will be applied for you.

{{example:components/input/simple.py:text_input}}

## Number inputs

When using `Input` with `type='number'`, the `value` prop will be given the value `None` if a non-numeric input is given, or if the number falls out of the range specified by `min` and `max`. If you are using _dash-core-components_, it will inject some CSS that adds a red outline to `input` elements with the `:invalid` pseudo-class. You can write your own custom CSS to override this and apply styles more consistent with Bootstrap if you like. Take the following example where we wrap the `Input` component in a component with a particular `id` that we then target with the CSS selector.

```css
#styled-numeric-input input:invalid {
  border-color: #dc3545;
  padding-right: calc(1.5em + 0.75rem);
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='%23dc3545' viewBox='-2 -2 7 7'%3e%3cpath stroke='%23dc3545' d='M0 0l3 3m0-3L0 3'/%3e%3ccircle r='.5'/%3e%3ccircle cx='3' r='.5'/%3e%3ccircle cy='3' r='.5'/%3e%3ccircle cx='3' cy='3' r='.5'/%3e%3c/svg%3E");
  background-repeat: no-repeat;
  background-position: center right calc(0.375em + 0.1875rem);
  background-size: calc(0.75em + 0.375rem) calc(0.75em + 0.375rem);
  outline: none;
}
```

{{example:components/input/number_input.py:number_input}}

## Labels and text

Use the `FormGroup` component along with `Label` and `FormText` to control the layout of your `Input` components. See the [documentation for forms](/l/components/form) for more details.

{{example:components/input/text_label.py:text_input}}

## Input size

You can control the size of the `Input` using the `bs_size` keyword argument. It accepts the values `sm`, `md` or `lg` for small, medium or large sizes respectively.

{{example:components/input/size.py:inputs}}

## Input validation

Add valid / invalid styles to your `Input` components using the `valid` and `invalid` keyword arguments.

{{example:components/input/validation.py:inputs}}

## Textarea

The `Textarea` component works like the _dash-core-components_ analogue, but accepts the additional arguments `valid`, `invalid`, and `bs_size` much like `Input`.

{{example:components/input/textarea.py:textareas}}

## Select

The `Select` component can be used to render a Bootstrap themed select input. The options are specified with a list of dictionaries much like the `Dropdown` component in _dash-core-components_, i.e. with keys `'label'`, `'value'` and optional key `'disabled'`. Like `Input` it also accepts keyword arguments such as `bs_size`, `valid`, `invalid`, all of which can be targeted with callbacks.

{{example:components/input/select.py:select}}

## RadioItems and Checklist

`RadioItems` and `Checklist` components also work like _dash-core-components_. Provided you specify an `id`, _dash-bootstrap-components_ will render custom themed radio buttons or checkboxes rather than using the native browser buttons. When using `Checklist` you can also specify `switch=True` to render toggle-like switches rather than checkboxes. If you prefer to use the native buttons and checkboxes, set `custom=False`. Note that there is no native browser switch, so if you set `custom=False` then `switch` will be ignored.

Use these components with `FormGroup` for automatic spacing and padding.

{{example:components/input/radio_check.py:inputs}}

Set `inline=True` to make the radio items or checklists fit next to each other on a line.

{{example:components/input/radio_check_inline.py:inline_inputs}}

## Checked item styles

Use the `labelCheckedStyle` and `labelCheckedClassName` arguments to apply different styles to the labels of checked items. When using custom inputs you can override the styles of the inputs using custom CSS. See the below example.

```css
#checklist-selected-style
  .custom-control-input:checked
  ~ .custom-control-label::before {
  background-color: #fa7268;
  border-color: #ea6258;
}
```

{{example:components/input/selected_styles.py:checklist}}

## Standalone checkboxes and radio buttons

If you need more granular control over checkboxes and radio buttons, you can also create standalone components. Bind callbacks to the `checked` keyword to react to changes in the input state. To attach a label, create a FormGroup with `check=True` and use the label's `html_for` keyword to bind it to the checkbox.

{{example:components/input/radio_check_standalone.py:standalone_radio_check}}

{{apidoc:src/components/input/Input.js}}

{{apidoc:src/components/input/Textarea.js}}

{{apidoc:src/components/input/RadioItems.js}}

{{apidoc:src/components/input/Checklist.js}}

{{apidoc:src/components/input/Checkbox.js}}

{{apidoc:src/components/input/RadioButton.js}}
