---
title: Buttons
lead: Documentation and examples for Bootstrap's button styles with _dash-bootstrap-components_.
---

## Examples

Bootstrap includes several predefined button styles based on the predefined contextual colors. Choose between them using the `color` argument.

{{example:components/button/simple.py:buttons}}

## Using buttons

Use the `n_clicks` prop as an input to your callbacks to trigger the callback when buttons are clicked by the user.

{{example:components/button/usage.py:button}}

## Outline buttons

Set `outline=True` to apply the outline button style, which is more lightweight than the default style.

{{example:components/button/outline.py:buttons}}

## Button size

Modify the size of the button by setting `size` to either `"sm"` or `"lg"` for a small or large button respectively.

{{example:components/button/size.py:buttons}}

## Block button

Create a Bootstrap 4 style block level button (one which spans the full width
of the parent) by using Bootstrap's [spacing utility classes](https://getbootstrap.com/docs/5.0/utilities/spacing/).

{{example:components/button/block.py:button}}

## Smaller block buttons

You can adjust the width of the block button can be achieved using grid column width classes. This button is made half-size using `.col-6` and centered with `.mx-auto`.

{{example:components/button/half_block.py:button}}

## Responsive block buttons

A responsive variation on the block button can be created by making using of breakpoints to specify behaviour. Resize your screen to see how adding the `d-md-block` class changes the button behaviour on smaller screens.

{{example:components/button/responsive_block.py:button}}

## Flex layout

Flex and margin utilities can be used to adjust the alignment of the buttons in their horizontal state too. Here we use them in conjuction with the responsive block button above to control the layout on larger and smaller screens.

{{example:components/button/flex_block.py:button}}

## Active and disabled states

When a user hovers the cursor over a button the background and border will darken in response. You can enforce this active state if needed by setting `active=True`.

{{example:components/button/active_disabled.py:buttons}}

## Download option

The `download` prop allows you to specify the filename for a downloaded file that can differ from the filename on the server.

{{example:components/button/download.py:button}}

{{apidoc:src/components/Button.js}}
