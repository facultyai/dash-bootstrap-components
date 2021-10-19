---
title: Migration guide
---

# Migration guide for dash-bootstrap-components v1

_dash-bootstrap-components_ v1 contains loads of new features, but also some breaking changes. This is for two reasons:

- First, now that the library has matured, we have taken the opportunity to clean up the API and make things more consistent across components.
- Second we have updated all components to support Bootstrap 5 (previously we supported Bootstrap 4). Since Bootstrap 5 also contains a number of breaking changes, we have inherited those in _dash-bootstrap-components_. For more information about the changes in Bootstrap 5, see the upstream [Bootstrap migration guide](https://v5.getbootstrap.com/docs/5.0/migration) and the [Bootstrap 5 Documentation](https://getbootstrap.com/docs/5.0/layout/grid/).

This guide introduces the new features, and also covers the changes you must make to run your apps with _dash-bootstrap-components_ 1.0.0 rather than 0.13.x (the final v0 releases). If you find any issues not covered here, or bugs in v1 please [raise an issue](https://github.com/facultyai/dash-bootstrap-components/issues/new/choose) on our GitHub repository.

If you're not ready to upgrade yet, you can continue to use earlier versions of dash-bootstrap-components, just be sure to pin the version numbers. You can still see documentation for version 0 [here](https://dbc-v0.herokuapp.com).

~~~bootstrap-tabs
Python
### PyPI

To install the last v0 release of _dash-bootstrap-components_ from PyPI use

```sh
pip install "dash-bootstrap-components<1"
```

### Anaconda

If you installed _dash-bootstrap-components_ with `conda` you can use

```sh
conda install -c conda-forge "dash-bootstrap-components<1"
```
-----
R
You can install earlier versions of _dash-bootstrap-components_ from our GitHub repository by specifying the relevant tag

```r
library(devtools)
install_github('facultyai/dash-bootstrap-components@r0.13.0')
```
-----
Julia
You can install earlier versions of `DashBootstrapComponents` by adding the version number to the install command.

```julia-repl
pkg> add DashBootstrapComponents@0.13.0
```
~~~

## Dependencies

<span class="badge bg-danger">Breaking</span> _dash-bootstrap-components_ v1 requires Dash 2.0.0 or greater. The primary implication of this is that we have dropped support for Python 2.7 and 3.5. All apps using _dash-bootstrap-components_ v1 should be run with Python 3.6+.

See the [Dash 2.0 migration guide](https://dash.plotly.com/dash-2-0-migration) for more details on changes within Dash itself.

## New Themes

Check out the four new themes: `QUARTZ`, `MORPH`, `VAPOR` and `ZEPHYR`  in the [Theme Explorer](/docs/themes/explorer/)

## Icons

Include Bootstrap and Font Awesome icons to your app as easily as adding a Bootstrap Theme using bundled links to CDNs for [Bootstrap Icons](https://icons.getbootstrap.com/) and [Font Awesome](https://fontawesome.com/). See more information in the [Icons](/docs/icons) section of the docs.

## Components

There are seven new components in _dash-bootstrap-components_: `Accordion`, `Breadcrumb`, `FormFloating`, `ModalTitle`, `Offcanvas`, `Pagination`, and `Switch`. Additionally many components have changes to their props.

Notably previously there was a mix of `size` and `bs_size` props for controlling the size of some components. All components that allow size to be changed now consistently use `size`. To set the HTML `size` property of the underlying `<input />` in the `Input` component, or the underlying `<select />` in the `Select` component, use `html_size` instead.

### Accordion <span class="badge bg-success">New</span>
- Added new accordion component. Check out the documentation [here](/docs/components/accordion)

### Badge
- <span class="badge bg-danger">Breaking</span> The `color` property now only sets the background color.  Use the new `text_color` prop to change the color of the text. You’ll likely need to set a dark text color when using `color="light"`.

### Breadcrumb <span class="badge bg-success">New</span>
- Added new Breadcrumb component. Check out the documentation [here](/docs/components/breadcrumb)

### Buttons
- <span class="badge bg-danger">Breaking</span> The default color for the buttons is now `primary` rather than `secondary`.  This change was made to match the Bootstrap convention.
- <span class="badge bg-danger">Breaking</span> The `block` property has been dropped. Instead, wrap the buttons in a `html.Div` and use the Bootstrap utilities classes such as `"d-grid"` and a `"gap-*"` in the `className` to space the buttons as needed. See [the docs](/docs/components/button) for examples.
- Disabled buttons now have `pointer-events: none` as a default.

### ButtonGroup
- <span class="badge bg-danger">Breaking</span> The default color for the buttons is now `primary` rather than `secondary`.  This change was made to match the Bootstrap convention.

### Card
- <span class="badge bg-danger">Breaking</span> Dropped `CardDeck` component. Use the Bootstrap grid classes to arrange the cards like a card deck.  See
the [Bootstrap grid docs](https://getbootstrap.com/docs/5.0/layout/grid/#row-columns) for more information.
- <span class="badge bg-danger">Breaking</span> Dropped `CardColumns` component. `CardColumns` had many [issues in Bootstrap 4](https://github.com/twbs/bootstrap/pull/28922) and was dropped in Bootstrap 5.

### Carousel
- Added `dark` property for dark text, controls, and indicators. This is great for lighter backgrounds.
- Replaced chevron icons for carousel controls with new SVGs from Bootstrap Icons.

### Col
- <span class="badge bg-danger">Breaking</span> When specifying the `order` of the columns, it accepts the integers 1, ..., 5,  only rather than integers 1, ..., 12.
- Added `xxl` prop corresponding to the new `xxl` breakpoint in Bootstrap 5. Allows you to control the layout on extra large screens.

### Collapse
- <span class="badge bg-danger">Breaking</span> Dropped the `tag` property.
- Removed the Accordion example since we now have a new Accordion component.

### DropdownMenu
- <span class="badge bg-danger">Breaking</span> The default color for the buttons is now `primary` rather than `secondary`.  This change was made to match the Bootstrap convention.
- <span class="badge bg-danger">Breaking</span> Changed the `direction` prop options from right and left to start and end to match the Bootstrap 5 convention.
- <span class="badge bg-danger">Breaking</span> Changed the name of the `right` prop to `align_end`.
- <span class="badge bg-danger">Breaking</span> Changed the name of the  `bs_size` property to  `size`.
- Added `menu_variant` prop to make the dropdown menu a dark color scheme.

### Fade
- <span class="badge bg-danger">Breaking</span> Dropped `base_class` property.
- <span class="badge bg-danger">Breaking</span> Dropped `base_class_active` property.

### FormGroup
- <span class="badge bg-danger">Breaking</span> Dropped `FormGroup`. It is no longer necessary to use `FormGroup` to align components in a form.  Use `Row` `Col` and gutter modifier classes and spacing utilities instead. See [the documentation](/docs/components/form) for examples

### FormFloating <span class="badge bg-success">New</span>
- Added `FormFloating` component to create a label that floats over the form field. See the documentation [here](/docs/components/form)

### Input
- <span class="badge bg-danger">Breaking</span> Dropped `bs_size` property.  Use `size` instead. Use `html_size` to set the HTML size property on the underlying input.

### InputGroup
- <span class="badge bg-danger">Breaking</span> Dropped `InputGroupAddon` component. It's not necessary to use `InputGroupAddon` because things like `Button` and `InputGroupText` can be added to `InputGroup` as direct children. See the [docs](/docs/components/input_group/) for more examples.

### Jumbotron
- <span class="badge bg-danger">Breaking</span> Dropped the Jumbotron component. The [docs have an example](/docs/components/jumbotron/) of how to replicate it with Bootstrap utilities.

### ListGroup
- <span class="badge bg-danger">Breaking</span> Dropped the `ListGroupHeading` and `ListGroupItemText` components. Both are unnecessary since you can pass any Dash components to the children of `ListGroupItem`. See the [docs](/docs/components/list_group/) for updated examples.

### Modal
- <span class="badge bg-danger">Breaking</span> Wrap any title text with the new `ModalTitle` component to make sure the font size and style is set appropriately. This change is to allow more flexibility in the allowed children of the `ModalHeader`.
- Added `fullscreen` property
- Added `keyboard` property to close modal when escape key is pressed.

### Nav
- <span class="badge bg-danger">Breaking</span> Dropped `active` property in `NavItem`. You should only need to set `active` on the child `NavLink` instead.
- Added `navbar_scroll` property. This enables vertical scrolling within the toggleable contents of the nav when used inside a collapsed `Navbar`.

### Navbar
- <span class="badge bg-danger">Breaking</span> Bootstrap navbars now must be constructed with a container. If you're using `NavbarSimple` you don't need to make any changes! If you are using `Navbar` with a custom layout you probably will need to make changes. See the [docs](/docs/components/list_group/) for updated examples.

### Offcanvas <span class="badge bg-success">New</span>
- Added the new offcanvas component. See the [docs](/docs/components/offcanvas) for more information.

### Pagination <span class="badge bg-success">New</span>
- Added a new Pagination component. See the [docs](/docs/components/pagination) for more information.

### Progress
- <span class="badge bg-danger">Breaking</span> Dropped `barClassName` property.  Use `className`
- <span class="badge bg-danger">Breaking</span> Dropped `bar_style` property. Use `style`
- <span class="badge bg-danger">Breaking</span> Dropped `tag` property.
- Added a `label` property that should be used instead of `children` to render text on the progress bar.
- Added a `hide_label` property to hide the label.

### Row
- <span class="badge bg-danger">Breaking</span> Dropped `no_gutters` prop.  Use gutter modifier classes instead. See the [docs](/docs/components/layout/) for examples.

### Select
- <span class="badge bg-danger">Breaking</span> Dropped `bs_size` property.  Use `size` instead.

### Spinner
- `Spinner` has a new prop `delay_show` which can be used to control how long a component should be loading for before the spinner shows.
- <span class="badge bg-danger">Breaking</span> `debounce` prop has been renamed to `delay_hide` to mirror `delay_show`. This prop adds a delay to the spinner being hidden once the child component has finished loading.

### Switch <span class="badge bg-success">New</span>
- New `Switch` component. See the documentation [here](/docs/components/input)

### Table
- <span class="badge bg-danger">Breaking</span> Dropped `tag` property.
- Added `color` property.

### Tabs
- <span class="badge bg-danger">Breaking</span> Dropped `card` property.  It's no longer necessary to set `card=True` to put tabs in a `Card`.

### TextArea
- <span class="badge bg-danger">Breaking</span> Dropped `bs_size` property.  Use `size` instead.

### Toast
- <span class="badge bg-danger">Breaking</span> Dropped `fade` property.
- Added `color` property to set the background color.

### Tooltip
- <span class="badge bg-danger">Breaking</span> Dropped the following properties: `arrowClassName`, `autohide`, `boundaries_element`, `container`, `hide_arrow`, `innerClassName`, `offset`
