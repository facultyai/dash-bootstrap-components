---
title: Progress
lead: Add Bootstrap style progress bars to your app with the `Progress` component, featuring support for stacked bars, animated backgrounds, and text labels.
---

## Examples

Use the `value` argument of `Progress` to set progress.

{{example:components/progress/progress.py:progress}}

## Labels

To add a text label to the progress bar, use the `label` prop.

{{example:components/progress/labels.py:progress}}

## Height

Set the height of the progress bar using the `style` argument.

{{example:components/progress/height.py:progress}}

## Backgrounds

Use the `color` argument along with one of Bootstrap's contextual color names to set the background color of the progress bar.

{{example:components/progress/background.py:progress}}

## Multiple bars

You can nest `Progress` components to make a progress bar with multiple bars. Make sure you set `bar=True` on each of the children.

{{example:components/progress/multiple.py:progress}}

## Striped bars

Set `striped=True` for a striped progress bar.

{{example:components/progress/stripes.py:progress}}

## Animated stripes

If you have set `striped=True`, you can also set `animated=True` to get animated stripes.

{{example:components/progress/animated.py:progress}}

## Example with interval

Typically to use `Progress` effectively, you will want to use a `dcc.Interval` component to periodically monitor some background process and update the progress accordingly. In this example we show the approximate structure, without running any particular background process.

{{example:components/progress/interval.py:progress}}

{{apidoc:src/components/Progress.js}}
