---
title: Offcanvas
lead: Use the `Offcanvas` component to add a customisable sidebar to your apps.
---

Offcanvases are built up using the `Offcanvas`, `OffcanvasHeader` and `OffcanvasBody` components. Set the `is_open` prop of the `Offcanvas` to `True` to open the offcanvas. By default, the offcanvas can be dismissed by clicking outside the offcanvas or by pressing the escape key (this behaviour can be overridden, see below), though you can also write your own callbacks that set `is_open` to `False`.

{{example:components/offcanvas/simple.py:offcanvas}}

## Placement

By default the offcanvas will appear to the left of the screen (`start`). You can change where it appears though by using the `placement` property.

{{example:components/offcanvas/placement.py:offcanvas}}

## Backdrop

By default the offcanvas will render with a backdrop that dismisses the offcanvas on click. Set `backdrop=False` to render the offcanvas without a backdrop.

{{example:components/offcanvas/backdrop.py:offcanvas}}

## Scrolling main page contents

By default, when an offcanvas is displaying, the user is unable to scroll content on the main page. If you prefer you can specify `scrollable=True` to allow the user to still scroll the content whilst the offcanvas is showing.

{{example:components/offcanvas/scrollable.py:offcanvas}}

{{apidoc:src/components/offcanvas/Offcanvas.js}}

{{apidoc:src/components/offcanvas/OffcanvasHeader.js}}

{{apidoc:src/components/offcanvas/OffcanvasBody.js}}

{{apidoc:src/components/offcanvas/OffcanvasFooter.js}}
