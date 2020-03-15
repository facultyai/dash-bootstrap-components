---
title: Toasts
lead: Push notifications to your users with a toast, a lightweight and easily customisable alert message.
---

Toasts are lightweight notifications designed to mimic the push notifications popularized by mobile and desktop operating systems.

## Simple example

The `Toast` component automatically creates a header and body, the children of the component populate the body, while the `header` property can be used to set the header text.

{{example:components/toast/simple.py:toast}}

## Icons and dismissing

You can use the `icon` argument to add a contextually coloured icon to the header. You can also add a dismiss button by setting `dismissable=True`. Clicking on the dismiss button will dismiss the toast. To make the toast visible again you should set `is_open` to `True` using a callback.

{{example:components/toast/icon_dismiss.py:toast}}

## Automatic dismissal

You can have your `Toast` components dismiss themselves by using the `duration` keyword argument. Specify a duration in milliseconds after which you would like the `Toast` to dismiss itself when it first becomes visible.

{{example:components/toast/auto_dismiss.py:toast}}

## Positioning

Toasts can be placed using CSS. If positioning a single toast you can use the `style` and `className` arguments to place it. If you will display multiple notifications consider wrapping them in a container and positioning the container so that the notifications stack properly.

{{example:components/toast/position.py:toast}}

{{apidoc:src/components/Toast.js}}
