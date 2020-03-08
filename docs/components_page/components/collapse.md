---
title: Collapse
lead: Toggle the visibility of content in your apps using the `Collapse` component.
---

## Simple example

The `Collapse` component can be used to show and hide content in your apps. Simply set `is_open=True` to show the content, and `is_open=False` to hide it. This simple example uses a button click to toggle the `is_open` prop.

{{example:components/collapse/simple.py:collapse}}

## Multiple targets

You can write arbitrarily complex callbacks to control the behaviour of your `Collapse` components. This example has a single button controlling multiple `Collapse` components, as well as multiple buttons sharing control of a single `Collapse` component.

{{example:components/collapse/multiple.py:collapses}}

## Accordion

You can replicate the accordion example in the [Bootstrap docs](https://getbootstrap.com/docs/4.3/components/collapse/#accordion-example) by writing a callback with multiple outputs.

{{example:components/collapse/accordion.py:accordion}}

{{apidoc:src/components/Collapse.js}}
