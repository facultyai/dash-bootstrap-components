---
title: Navbar
lead: Easily create responsive navigation headers using the `NavbarSimple` and `Navbar` components.
---

## Examples

There are two navbar components in *dash-bootstrap-components*, `NavbarSimple` and `Navbar`. The `NavbarSimple` component is simpler but less flexible, whereas the `Navbar` component is fully customisable, but requires more boilerplate to get working. If you want a navbar with some branding information and a collection of links, `NavbarSimple` will probably be enough. If you want to do something more specialised, `Navbar` might be necessary.

`Navbar` is not to be confused with the related `Nav` component. A `Nav` groups links together to be displayed horizontally or vertically. A `Navbar` represents the app's navbar, usually at the top of the page, and often will consist of a `Nav` plus other information like the name of the app.

## NavbarSimple

The pre-built `NavbarSimple` consists of a 'brand' on the left, to which you can attach a link with `brand_href`, and a number nav items as its children. You can use a mix of `NavItem` and `DropdownMenu`.

The `NavbarSimple` will collapse on smaller screens, and add a toggle for revealing the navigation items. You can modify which breakpoint the expansion happens at with the `expand` keyword argument. The default is `'md'`.

{{example:components/navbar/simple.py:navbar}}

## Navbar

If you want to have more control over the layout of your navbar you can use the `Navbar` component. This gives you full control over the children, but you will have to write your own callbacks to achieve things like the toggle behaviour on small screens. From Bootstrap 5, all elements inside the `NavBar` should be contained within a [`Container`](/docs/components/layout). We also recommend using a `Nav` component to wrap the navigation items, check the [docs here](/docs/components/nav).

Here is an example of a custom navbar, see the `examples/` folder in the [GitHub repo](https://github.com/facultyai/dash-bootstrap-components/blob/main/examples/python/advanced-component-usage/navbars.py) for more.

{{example:components/navbar/navbar.py:navbar}}

{{apidoc:src/components/nav/NavbarSimple.js}}

{{apidoc:src/components/nav/Navbar.js}}

{{apidoc:src/components/nav/NavbarBrand.js}}

{{apidoc:src/components/nav/NavbarToggler.js}}
