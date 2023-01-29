---
title: Placeholder
lead: Use the Placeholde component to indicate when something is loading on your page.
---

## Basic Usage

`Placeholder` is a coloured rectangle which can be used to indicate text or other content should be there. You can make use of `button=True` to make the object look more like a button.

{{example:components/placeholder/simple.py:placeholder}}

## Width

You can change the width through grid column classes, width utilities, or inline styles.

{{example:components/placeholder/width.py:placeholder}}

## Color

Make use of the `color` property with the Bootstrap color names to change the color of the placeholder.

{{example:components/placeholder/color.py:placeholder}}

## Sizing

The size of Placeholders are based on the typographic style of the parent element. Customize them with sizing props: `lg`, `sm`, or `xs`.

{{example:components/placeholder/size.py:placeholder}}

## Animation

Animate placeholders by setting the prop `animation` to `glow` or `wave` to better convey the perception of something being actively loaded.

{{example:components/placeholder/animation.py:placeholder}}

## Loading component

As with the Spinner component, you can also use the Placeholder as a loading component.

{{example:components/placeholder/loading.py:placeholder}}


{{apidoc:src/components/placeholder/Placeholder.js}}
