---
title: Alerts
lead: Provide contextual feedback messages for user actions with the `Alert` component.
---

## Basic usage

Set the color of `Alert` using the `color` argument and one of the eight supported contextual color names.

{{example:components/alert/simple.py:alerts}}

## Link color

The Bootstrap `alert-link` class can be used to color match links inside alerts to the color of the alert.

{{example:components/alert/link.py:alerts}}

## Additional content

Alerts can contain additional HTML elements like headings, paragraphs and dividers.

{{example:components/alert/content.py:alert}}

## Dismissing

Set `dismissable=True` to add a dismiss button to the alert which closes the alert on click. You can also use the `is_open` property in callbacks to show or hide the alert. By default the alert appears and disappears with a fade animation. To disable this simply set `fade=False`.

{{example:components/alert/dismiss.py:alert}}

## Automatic dismissal

You can have your `Alert` components dismiss themselves by using the `duration` keyword argument. Specify a duration in milliseconds after which you would like the `Alert` to dismiss itself when it first becomes visible.

{{example:components/alert/auto_dismiss.py:alert}}

{{apidoc:src/components/Alert.js}}
