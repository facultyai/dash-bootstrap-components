---
title: Offcanvas
lead: Use the `Offcanvas` component to add a customisable sidebar to your apps.
---

## Examples

`Offcanvas` components work in a similar fashion to a simplified `Modal`. Set the `is_open` prop of the `Offcanvas` to `True` to open the offcanvas. By default, the offcanvas can be dismissed by clicking the close button in the header, outside the offcanvas or by pressing the escape key (these behaviours can all be overridden, using `close_button=False`, `backdrop="static"` and `keyboard=False` respectively - see below), though you can also write your own callbacks that set `is_open` to `False`.

{{example:components/offcanvas/simple.py:offcanvas}}

## Placement

By default the offcanvas will appear to the left of the screen (`start`). You can change where it appears though by using the `placement` property.

{{example:components/offcanvas/placement.py:offcanvas}}

## Backdrop

By default the offcanvas will render with a backdrop that dismisses the offcanvas on click. Set `backdrop=False` to render the offcanvas without a backdrop, or `backdrop="static"` to render a backdrop that doesn't dismiss the offcanvas when clicked.

{{example:components/offcanvas/backdrop.py:offcanvas}}

## Scrolling main page contents

By default, when an offcanvas is displaying, the user is unable to scroll content on the main page. If you prefer you can specify `scrollable=True` to allow the user to still scroll the content whilst the offcanvas is showing.

{{example:components/offcanvas/scrollable.py:offcanvas}}

{{apidoc:src/components/offcanvas/Offcanvas.js}}
