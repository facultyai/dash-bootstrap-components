---
title: Badges
lead: Documentation and examples for how to use Bootstrap badges with _dash-bootstrap-components_.
---

## Simple example

Badges can be used as part of buttons or links to provide a counter.

{{example:components/badge/simple.py:simple_badge}}

## Badge sizing

Badges scale to match the size of their parent by using relative font sizing.

{{example:components/badge/size.py:varying_size_badges}}

## Conteztual variations

Use the `color` argument to apply one of Bootstrap's contextual color classes.

{{example:components/badge/color.py:coloured_badges}}

## Pill badges

Set `pill=True` to make the badges more rounded (with a larger `border-radius` and additional horizontal padding).

{{example:components/badge/pills.py:pill_badges}}

## Links

Add a link with the `href` argument to create actionable badges with hover and focus states.

{{example:components/badge/links.py:linked_badges}}

{{apidoc:src/components/Badge.js}}
