---
title: ButtonGroup
lead: Group a series of buttons on a single line with the `ButtonGroup` component.
---

## Simple example

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

{{apidoc:src/components/ButtonGroup.js}}
