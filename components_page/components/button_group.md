---
title: ButtonGroup
lead: Group a series of buttons on a single line with the `ButtonGroup` component.
---

## Examples

Wrap a list of `Button` components with `ButtonGroup`.

{{example:components/button_group/simple.py:button_group}}

## Size

Instead of setting the `size` prop of each button in the group, you can set the `size` prop of the `ButtonGroup` to modify the size of all buttons in the group.

{{example:components/button_group/size.py:button_groups}}

## Dropdown

As well as `Button` you can include `DropdownMenu` in your button groups by setting `group=True`.

{{example:components/button_group/dropdown.py:button_group}}

## Vertical variation

Stack buttons in the `ButtonGroup` vertically by setting `vertical=True`.

{{example:components/button_group/vertical.py:button_group}}

## RadioItems as ButtonGroup

Sometimes you might like to use a `ButtonGroup` to let the user choose from a set of options, where the currently chosen option is indicated by that button being marked as "active". Since this requires that buttons respond to other buttons in the group being clicked on, it can be a little awkward to achieve when each button is a separate Dash component. Instead it is easier to use `RadioItems` and do some customisation of the styling. Most of the customisation is achieved with the `label_class_name` and `label_checked_class_name` props of the `RadioItems` component, though some additional CSS is required (see below).

{{example:components/button_group/radios.py:button_group}}

```css
/* Turn off existing buttons */
.radio-group .custom-control-input ~ .custom-control-label::before {
  content: none;
}

.radio-group .custom-radio .custom-control-input ~ .custom-control-label::after {
  content: none;
}

/* restyle radio items */
.radio-group .custom-control {
  padding-left: 0;
}

.radio-group .btn-group > .custom-control:not(:last-child) > .btn {
  border-top-right-radius: 0;
  border-bottom-right-radius: 0;
}

.radio-group .btn-group > .custom-control:not(:first-child) > .btn {
  border-top-left-radius: 0;
  border-bottom-left-radius: 0;
  margin-left: -1px;
}
```


{{apidoc:src/components/ButtonGroup.js}}
