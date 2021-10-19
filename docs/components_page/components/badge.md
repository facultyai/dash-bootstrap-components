---
title: Badges
lead: Documentation and examples for how to use Bootstrap badges with _dash-bootstrap-components_.
---

## Examples

Badges can be used as part of buttons or links to provide a counter.

{{example:components/badge/simple.py:badge}}

## Badge sizing

Badges scale to match the size of their parent by using relative font sizing.

{{example:components/badge/size.py:badges}}

## Background colors

Use the `color` argument to apply one of Bootstrap's contextual color classes.

{{example:components/badge/color.py:badges}}

## Text colors

Use the `text_color` argument to apply one of Bootstrap's contextual color classes to the font.

{{example:components/badge/text_color.py:badges}}

## Pill badges

Set `pill=True` to make the badges more rounded (with a larger `border-radius` and additional horizontal padding).

{{example:components/badge/pills.py:badges}}

## Positioning

Use the Bootstrap's [position utility classes](https://getbootstrap.com/docs/5.0/utilities/position/) to modify a badge and position it in the corner of a link or button.

{{example:components/badge/positioned.py:badge}}

## Links

Add a link with the `href` argument to create actionable badges with hover and focus states. In Bootstrap 5 links are underlined by default. You can use the `text-decoration-none` class to override this if you wish.

{{example:components/badge/links.py:badges}}

{{apidoc:src/components/Badge.js}}
