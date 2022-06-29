---
title: Tooltip
lead: Use the `Tooltip` component to add Bootstrap style tooltips to your app, with no callbacks required.
---

## Examples

To use the `Tooltip` component, simply add it to the layout of your app, and give it the id of a component in your layout that you would like to use as the target. When the user hovers over the target component, the tooltip will display. There is no need to write any callbacks.

In the below example we use a `html.Span` component to target a particular word in a piece of text.

{{example:components/tooltip/tooltip.py:tooltip}}

## Placement

Use the `placement` argument to control the placement of the tooltip. The basic options are `'auto'`, `'top'`, `'left'`, `'right'`, `'bottom'`. You can additionally add `-start` or `-end` to any of these options, e.g. `'top-start'`.

{{example:components/tooltip/placement.py:tooltips}}

## Controlling the Tooltip with callbacks

The tooltip's visibility can be controlled with callbacks much like a `Popover` component. Simply set the desired value of `is_open` in a callback. If you are manually controlling the value of `is_open`, you may wish to also set `trigger=None`. By default the `Tooltip` will show when the target element is hovered or focused.

{{example:components/tooltip/tooltip_callback.py:tooltip}}

{{apidoc:src/components/Tooltip.js}}
