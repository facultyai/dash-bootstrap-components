---
title: Spinner
lead: Indicate the loading state of a component or page with the `Spinner` component.
---

The `Spinner` component can be used either to create a standalone spinner, or used in the same way as [dcc.Loading](https://dash.plot.ly/dash-core-components/loading) by passing children.

## Basic usage

To create a simple spinner, just add `dbc.Spinner()` to your layout. By default, `Spinner` uses the current text color for its border color. Override the color of the `Spinner` using the `color` argument and one of the eight supported contextual color names.

{{example:components/spinner/simple.py:spinners}}

## Loading component

If you pass children to `dbc.Spinner`, it will behave like `dcc.Loading`, which is to say it will render a spinner until the children component have loaded.

The spinner is rendered inside a `html.Div`. The `html.Div` that the spinner is rendered in will expand to fill the available width, and add a top and bottom margin. This can be overridden using `spinner_style` or `spinnerClassName`.

{{example:components/spinner/loading.py:loading_spinner}}

## Growing spinners

There are two types of spinner, border and grow. Border spinners are the default and can be seen above. To use grow spinners set `type="grow"`.

{{example:components/spinner/grow.py:spinners}}

## Size

Create a small spinner with `size="sm"` or use inline style arguments with the `spinner_style` prop for full control of the size of the spinner.

{{example:components/spinner/size.py:spinners}}

## Buttons

The `Spinner` component can be used inside buttons to indicate that an action is currently processing or taking place.

{{example:components/spinner/button.py:spinners}}

{{apidoc:src/components/Spinner.js}}
