---
title: Fade
lead: Toggle the visibility of content in your apps with a fade animation using the `Fade` component.
---

## Simple example

The `Fade` component can be used to show and hide content in your apps. When the visibility is toggled, the content will fade in / out. Simply set `is_in=True` to show the content, and `is_in=False` to hide it again. The simple example below uses a button click to toggle in the `is_in` prop.

{{example:components/fade/fade.py:fade}}

## Modifying the transition

You can adjust the transition by modifying the `transition` CSS property using inline styles or by linking a custom stylesheet.

{{example:components/fade/transition.py:fade}}

{{apidoc:src/components/Fade.js}}
