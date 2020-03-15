---
title: Progress
lead: Add Bootstrap style progress bars to your app with the `Progress` component, featuring support for stacked bars, animated backgrounds, and text labels.
---

## Basic example

Use the `value` argument of `Progress` to set progress.

{{example:components/progress/progress.py:progress}}

## Labels

To add a text label to the progress bar, simply add it as a child.

{{example:components/progress/labels.py:progress}}

## Height

Set the height of the progress bar using the `style` argument.

{{example:components/progress/height.py:progress}}

## Backgrounds

Use the `color` argument along with one of Bootstrap's contextual color names to set the background color of the progress bar.

{{example:components/progress/background.py:progress}}

## Multiple bars

You can nest `Progress` components to make a progress bar with multiple bars. Set `multi=True` on the parent `Progress` component, and `bar=True` on each child.

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
