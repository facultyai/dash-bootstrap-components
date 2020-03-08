---
title: Modal
lead: Use the `Modal` component to add dialogs to your app for lightboxes, user notifications, or completely custom content.
---

Modals are built up using the `Modal`, `ModalHeader`, `ModalBody` and `ModalFooter` components. Set the `is_open` prop of the `Modal` to `True` to open the modal. By default, the modal can be dismissed by clicking outside the modal or by pressing the escape key (these behaviours can both be overridden, see below), though you can also write your own callbacks that set `is_open` to `False`.

{{example:components/modal/simple.py:modal}}

## Modal size

Set the size of the modal using the `size` prop. The options are `"sm"`, `"lg"`, or `"xl"` for a small, large or extra large modal. If you don't specify anything, or specify `size=False`, you will get the default modal size.

{{example:components/modal/size.py:modal}}

## Backdrop

By default the modal will render with a backdrop that dismisses the modal on click. Set `backdrop=False` to render the modal without a backdrop, or `backdrop="static"` to render a backdrop that doesn't dismiss the modal when clicked.

{{example:components/modal/backdrop.py:modal}}

## Scrolling long content

When modals become too long for the user’s viewport or device, they scroll independently of the page itself. By default, the entire modal (including its header and footer) scrolls. If you prefer you can specify `scrollable=True` to scroll only the body of the modal.

{{example:components/modal/scrollable.py:modal}}

## Vertically centered modal

To vertically center the modal on the page, set `centered=True`.

{{example:components/modal/centered.py:modal}}

{{apidoc:src/components/modal/Modal.js}}

{{apidoc:src/components/modal/ModalHeader.js}}

{{apidoc:src/components/modal/ModalBody.js}}

{{apidoc:src/components/modal/ModalFooter.js}}
