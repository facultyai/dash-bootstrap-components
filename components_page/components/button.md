---
title: Buttons
lead: Documentation and examples for Bootstrap's button styles with _dash-bootstrap-components_.
---

## Buttons

Bootstrap includes several predefined button styles based on the predefined contextual colors. Chooose between them using the `color` argument.

{{example:components/button/simple.py:simple_buttons}}

## Using buttons

Use the `n_clicks` prop as an input to your callbacks to trigger the callback when buttons are clicked by the user.

{{example:components/button/usage.py:callback_button}}

## Outline buttons

Set `outline=True` to apply the outline button style, which is more lightweight than the default style.

{{example:components/button/outline.py:outline_buttons}}

## Button size

Modify the size of the button by setting `size` to either `"sm"` or `"lg"` for a small or large button respectively.

{{example:components/button/size.py:varying_size_buttons}}

## Block button

Create a block level button (one which spans the full width of the parent) by seeing `block=True`.

{{example:components/button/block.py:block_button}}

## Active and disabled states

When a user hovers the cursor over a button the background and border will darken in response. You can enforce this active state if needed by setting `active=True`.

{{example:components/button/active_disabled.py:state_buttons}}

{{apidoc:src/components/Button.js}}
