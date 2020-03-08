---
title: InputGroup
lead: Easily extend form controls by adding text, buttons or button groups on either side of `Input`, `Textarea` and `Select` components.
---

## Basic example

Wrap a compatible input component and an `InputGroupAddon` in an `InputGroup`. Use the `addon_type` keyword argument of `InputGroupAddon` to ensure the correct styling.

{{example:components/input_group/simple.py:input_groups}}

## Sizing

Use the `size` argument of `InputGroup` to set the size of all the contents, including inputs and addons. Possible options are `'lg'`, `'md'`, and `'sm'` for large, medium and small respectively.

{{example:components/input_group/size.py:input_group}}

## Checkboxes and radios

You can place a `Checkbox` or `RadioButton` inside the `InputGroup` instead of just text.

{{example:components/input_group/check_radio.py:input_groups}}

## Button addons

{{example:components/input_group/button.py:input_group}}

## DropdownMenu addons

{{example:components/input_group/dropdown.py:input_group}}

{{apidoc:src/components/input/InputGroup.js}}

{{apidoc:src/components/input/InputGroupAddon.js}}

{{apidoc:src/components/input/InputGroupText.js}}
