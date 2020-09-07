---
title: DropdownMenu
lead: Use `DropdownMenu` to organise lists of links and buttons into a toggleable overlay.
---

DropdownMenus are built up using the `DropdownMenu`, and `DropdownMenuItem` components. `DropdownMenu` will render a button to act as a toggle for the menu itself. The style of the toggle can be overridden with custom CSS. Clicking on the button will toggle the menu, without the need for you to write any callbacks.

Note: our `DropdownMenu` is an analogue of Bootstrap's Dropdown component. We have changed the name to avoid a clash with the existing `Dropdown` component in _dash-core-components_ which serves a different purpose.

## Simple example

This example creates a simple dropdown menu with three items.

{{example:components/dropdown/simple.py:dropdown}}

Each `DropdownMenuItem` can be used like `dash_core_components.Link`, as a regular hyperlink, or as a button by defining a callback that uses the `n_clicks` prop as an input. By default, `DropdownMenuItem` will behave like `dash_core_components.Link` if you assign a relative path to `href`, and like a regular hyperlink if you assign an absolute path. If you want to override this, for example you might like to access a route on the underlying Flask server, you can set `external_link=True`.

{{example:components/dropdown/menu_items.py:dropdown}}

## Styling the toggle

You can use the `color` prop of `DropdownMenu` to set the color to one of the Bootstrap contextual colors. If you want to further customise the style you can use the `toggle_style` and `toggleClassName` arguments.

{{example:components/dropdown/style.py:dropdowns}}

## DropdownMenu sizing

Control the size of the `DropdownMenu` toggle using the `size` argument. You can specify either `'sm'`, `'md'` (default), or `'lg'`.

{{example:components/dropdown/size.py:dropdown}}

## DropdownMenu direction

Use the `direction` argument to control where the menu is rendered relative to the toggle. The possible options are `'up'`, `'down'` (default), `'left'`, or `'right'`.

{{example:components/dropdown/direction.py:dropdown}}

## DropdownMenu alignment

By default the menu is aligned with left of the toggle. Set `right=True` for a right aligned menu.

{{example:components/dropdown/alignment.py:dropdown}}

## Menu content

Use the `active` and `disabled` arguments of `DropdownMenuItem` to set the active and disabled styles of menu items respectively. You can also use the `header` or `divider` arguments to create headers and dividers to help structure the menu. You can also include custom content such as text.

{{example:components/dropdown/content.py:dropdown}}

{{apidoc:src/components/dropdownmenu/DropdownMenu.js}}

{{apidoc:src/components/dropdownmenu/DropdownMenuItem.js}}
