---
title: Popover
lead: Use the Popover component to add Bootstrap popovers to any component in your app.
---

## Examples

To use `Popover`, add it to your layout, and set the `target` argument to the `id` of the component you would like to attach the popover to. The easiest way to trigger the popover is to specify the `trigger` property. This should be a string containing any of the following 4 values (space separated)

*  `"click"`: toggles the popover when the target is clicked.
*  `"focus"`: toggles the popover when the target receives focus
*  `"hover"`: toggles the popover when the target is hovered over with the cursor.
*  `"legacy"`: toggles the popover when the target is clicked, but will also dismiss the popover when the user clicks outside of the popover.

{{example:components/popover/popover.py:popovers}}

## Popover components

You can build a styled `Popover` by making use of the `PopoverHeader` and `PopoverBody`.

{{example:components/popover/popover_components.py:popovers}}

## Toggling the Popover with callbacks

Alternatively, you can manually control the appearance of the popover using callbacks by setting the `is_open` property of the `Popover`. This can be useful for example when you want to make the popover appear after the user interacts with something other than the target component as demonstrated in the below example.

{{example:components/popover/popover_callback.py:popover}}

## Placement

Use the `placement` argument to control the placement of the `Popover`. The basic options are `'top'`, `'left'`, `'right'`, `'bottom'` and `'auto'`. You can additionally add `-start` or `-end` to any of these options, e.g. `'top-start'`.

{{example:components/popover/direction.py:popovers}}

## Styling

You can use `hide_arrow` to remove the arrow, and the `offset` property to offset the popover in relation to the target.

{{example:components/popover/styling.py:popovers}}


{{apidoc:src/components/popover/Popover.js}}

{{apidoc:src/components/popover/PopoverHeader.js}}

{{apidoc:src/components/popover/PopoverBody.js}}
