---
title: Popover
lead: Use the Popover component to add Bootstrap popovers to any component in your app.
---

## Simple example

To use `Popover`, add it to your layout, and set the `target` argument to the `id` of the component you would like to attach the popover to. Then define a callback that toggles the `is_open` property of the `Popover`. In the below example we use a simple callback to toggle the popover when a button is clicked. In this case the target of the popover is the button itself, but in general there is no requirement that the components used in the callback need to be related to the target.

{{example:components/popover/popover.py:popover}}

## Placement

Use the `placement` argument to control the placement of the `Popover`. The basic options are `'top'`, `'left'`, `'right'`, `'bottom'` and `'auto'`. You can additionally add `-start` or `-end` to any of these options, e.g. `'top-start'`.

{{example:components/popover/direction.py:popovers}}

{{apidoc:src/components/popover/Popover.js}}

{{apidoc:src/components/popover/PopoverHeader.js}}

{{apidoc:src/components/popover/PopoverBody.js}}
