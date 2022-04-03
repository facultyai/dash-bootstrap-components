---
title: Changelog
---

# Changelog

This page documents notable changes in dash-bootstrap-components releases.

## 1.1.0 - 2022/4/3

Version 1.1.0 of dash-bootstrap-components contains some new features and bug fixes. Please continue to report problems on our [issue tracker](https://github.com/facultyai/dash-bootstrap-components/issues).

### Added

- Add `readonly` prop to `Input` component ([PR 833](https://github.com/facultyai/dash-bootstrap-components/pull/833))
- Add `always_open` prop to `Accordion`. When set to `True`, opening one section of the accordion does not close any currently open sections ([PR 840](https://github.com/facultyai/dash-bootstrap-components/pull/840))
- dash-bootstrap-components now explicitly supports Python 3.10 ([PR 841](https://github.com/facultyai/dash-bootstrap-components/pull/841))

### Fixed

- Allow arbitrary colors to be passed to `color` prop of `Progress` ([PR 835](https://github.com/facultyai/dash-bootstrap-components/pull/835))
- `contentClassName` in `Modal` has been fixed, previously it was not passing the class names on to the relevant elements ([PR 839](https://github.com/facultyai/dash-bootstrap-components/pull/839))
- `Select` can now be cleared by returning `None` from a callback  ([PR 842](https://github.com/facultyai/dash-bootstrap-components/pull/842))

### Changed
- Updated CDN links for FontAwesome and Bootstrap Icons in the `icons` submodule. FontAwesome now uses version 6.1.1, Bootstrap Icons uses version 1.8.1 ([PR 837](https://github.com/facultyai/dash-bootstrap-components/pull/837))

## 1.0.3 - 2022/2/5

This is a patch release that fixes a few bugs. Please continue to report any bugs on our [issue tracker](https://github.com/facultyai/dash-bootstrap-components/issues)!

### Fixed

- Set `cursor: pointer` on tabs that aren't disabled ([PR 801](https://github.com/facultyai/dash-bootstrap-components/pull/801))
- Ensure no caret is rendered when `caret=False` in `DropdownMenu` ([PR 804](https://github.com/facultyai/dash-bootstrap-components/pull/804))

## 1.0.2 - 2021/12/12

This release updates CDN links to use Bootstrap 5.1.3 and fixes a few bugs. Please continue to report bugs on our [issue tracker](https://github.com/facultyai/dash-bootstrap-components/issues)!

### Changed

- Links in the `themes` module now use Bootstrap 5.1.3 ([PR 789](https://github.com/facultyai/dash-bootstrap-components/pull/789))

### Added

- Added `autohide` prop to `Tooltip` and `Popover` when using the `hover` trigger. When set to `True`, the `Popover` / `Tooltip` will hide if the mouse is moved over the content ([PR 788](https://github.com/facultyai/dash-bootstrap-components/pull/788))

### Fixed

- `Popover` with trigger `hover` will not dismiss if mouse is moved over the content ([PR 788](https://github.com/facultyai/dash-bootstrap-components/pull/788))
- Resolved bug where `Tooltip` could get stuck open when moused over quickly ([PR 788](https://github.com/facultyai/dash-bootstrap-components/pull/788))

## 1.0.1 - 2021/11/28

This release adds no new features but fixes a number of bugs. Please continue to report bugs on our [issue tracker](https://github.com/facultyai/dash-bootstrap-components/issues)!

### Fixed

- Open `AccordionItem`s will close when clicked on ([PR 744](https://github.com/facultyai/dash-bootstrap-components/pull/744))
- Fixed regressions in `DropdownMenu` dismissal. The menu will dismiss if the user clicks outside the menu or if the escape key is pressed. ([PR 751](https://github.com/facultyai/dash-bootstrap-components/pull/751))
- Fixed bug in `Select` that prevented `valid` and `invalid` props from having an effect ([PR 755](https://github.com/facultyai/dash-bootstrap-components/pull/755))
- Set `id` property on tabs so that they can be targeted with tooltips. ([PR 756](https://github.com/facultyai/dash-bootstrap-components/pull/756))
- A number of fixes to `Popover`: ensure the correct behaviour of the `legacy` trigger, and fix bug that prevented `offset` and `hide_arrow` props from having an effect. ([PR 757](https://github.com/facultyai/dash-bootstrap-components/pull/757))
- Make `Button` compatible with `dash_core_components.ConfirmDialogProvider` ([PR 773](https://github.com/facultyai/dash-bootstrap-components/pull/773))
- Fixed bug in `Button` that prevented `target` prop from having an effect ([PR 781](https://github.com/facultyai/dash-bootstrap-components/pull/781))

## 1.0.0 - 2021/10/19

v1 of _dash-bootstrap-components_! This release contains loads of new features, but also breaking changes. Please read the changelog carefully, and refer to the [migration guide](/migration-guide/) for full details of the changes.

### Added
- Seven new components! [Accordion](/docs/components/accordion), [Breadcrumb](/docs/components/breadcrumb), [FormFloating](/docs/components/form),  [ModalTitle](/docs/components/modal), [Offcanvas](/docs/components/offcanvas), [Pagination](/docs/components/pagination), and [Switch](/docs/components/input) ([PR 646](https://github.com/facultyai/dash-bootstrap-components/pull/646)) ([PR 689](https://github.com/facultyai/dash-bootstrap-components/pull/689))
- New CDN links for icons from Bootstrap Icons and Font Awesome ([PR 661](https://github.com/facultyai/dash-bootstrap-components/pull/661))
- CDN Links for four new Bootswatch themes: `QUARTZ`, `MORPH`, `VAPOR` and `ZEPHYR`.
- All components now accept `class_name` as an alternative to `className`. If both are specified then `class_name` will take precedence. `class_name` should be preferred from now on. ([PR 642](https://github.com/facultyai/dash-bootstrap-components/pull/642))

### Fixed
- The `loading_state` is no longer passed to underlying DOM nodes in any components ([PR 666](https://github.com/facultyai/dash-bootstrap-components/pull/666))
- `Popover` doesn't error if `is_open` defaults to true. ([PR 646](https://github.com/facultyai/dash-bootstrap-components/pull/646))

### Changed
- Components are all now built for Bootstrap 5. CDN links have all been updated. There are multiple breaking changes in the component props. Please see the [migration-guide](/migration-guide) for full details on the changes ([PR 646](https://github.com/facultyai/dash-bootstrap-components/pull/646)).

## 0.13.1 - 2021/9/22

### Fixed

- Fix cursor jump issue in `Input` component. ([PR 707](https://github.com/facultyai/dash-bootstrap-components/pull/707))

## 0.13.0 - 2021/7/31

### Added

- Adds a new `Carousel` component to display images in an animated slideshow. Thanks @AnnMarieW for the contribution! ([PR 587](https://github.com/facultyai/dash-bootstrap-components/pull/587))
- Exposes `title` prop on `Button` and `Badge` ([PR 617](https://github.com/facultyai/dash-bootstrap-components/pull/617))
- Added `links_left` prop to `NavbarSimple` to allow links to be left-aligned ([PR 618](https://github.com/facultyai/dash-bootstrap-components/pull/618))

### Fixed

- Fixed bug in `Spinner` component that meant `spinner_style` prop was not correctly applied to the spinner. ([PR 578](https://github.com/facultyai/dash-bootstrap-components/pull/578))

### Changed

- Updated behaviour of `Input` with `type="number"` to match behaviour in dash-core-components. If an invalid input is entered (i.e. one outside the range of `min` / `max` or with an invalid `step`) the component passes the value `None` to callbacks for the first invalid input, then doesn't fire again until a valid input is entered. [PR 626](https://github.com/facultyai/dash-bootstrap-components/pull/626))

## 0.12.2 - 2021/5/4

### Fixed

- Fix issue with nested `Progress` bars([PR 573](https://github.com/facultyai/dash-bootstrap-components/pull/573))

## 0.12.1 - 2021/5/4

### Added

- Adds `required` property to `Input` and `Select` ([PR 552](https://github.com/facultyai/dash-bootstrap-components/pull/552))
- Added `debounce` and `show_initially` props to `Spinner`. `debounce` can be used to add a time delay to prevent the spinner from dismissing immediately when its children have finished loading. This can help reduce flickering. `show_initially` can be used to ensure that the spinner is initially showing when the app starts up to prevent flickering when initial callbacks fire. ([PR 561](https://github.com/facultyai/dash-bootstrap-components/pull/561))
- Added `name` and `value` props to `Button`, can be used to send additional data with form submissions. ([PR 565](https://github.com/facultyai/dash-bootstrap-components/pull/565))

### Fixed

- Fix `toggle` property of `DropdownMenuItem` which can be used to prevent the parent `DropdownMenu` from dismissing when that item is clicked on ([PR 554](https://github.com/facultyai/dash-bootstrap-components/pull/554))

## 0.12.0 - 2021/3/21

### Added

- Adds a new `trigger` property to `Popover`, allowing it to be used without writing callbacks if desired ([PR 531](https://github.com/facultyai/dash-bootstrap-components/pull/531))
- Exposes `download` prop on `Button` ([PR 528](https://github.com/facultyai/dash-bootstrap-components/pull/528))

### Fixed

- Restore default colours in `Alert` and `Badge` components ([PR 542](https://github.com/facultyai/dash-bootstrap-components/pull/542))

### Changed

- Adds `visibility:hidden` to `Fade` when content is faded so that tooltips do not appear on faded content ([PR 535](https://github.com/facultyai/dash-bootstrap-components/pull/535), [PR 537](https://github.com/facultyai/dash-bootstrap-components/pull/537))

## 0.11.3 - 2021/2/13

This version marks the first release of dash-bootstrap-components for Julia. There are no changes in functionality.

## 0.11.2 - 2021/2/5

### Added

- `color` prop for multiple components now accepts CSS colors, hex strings etc. ([PR 506](https://github.com/facultyai/dash-bootstrap-components/pull/506))
- `Table.from_dataframe` now supports multiple column header levels ([PR 509](https://github.com/facultyai/dash-bootstrap-components/pull/509))

## 0.11.1 - 2020/12/20

### Fixed

- Fixes bug that prevented `active` property of `NavLink` from being correctly updated by callbacks ([PR 499](https://github.com/facultyai/dash-bootstrap-components/pull/499))

## 0.11.0 - 2020/12/13

### Added

- The `NavLink` component can now automatically set the `active` prop based on the current pathname. Set `active="exact"` to toggle set `active=True` if the `href` exactly matches the current pathname, or `active="partial"` to set `active=True` if the current pathname starts with `href` ([PR 482](https://github.com/facultyai/dash-bootstrap-components/pull/482))
- `active_tab_style` and `activeTabClassName` props to `Tab` for styling active tabs ([PR 491](https://github.com/facultyai/dash-bootstrap-components/pull/491))
- Exposed `name` prop on input components so that they can be used more effectively in form submissions, and `action` and `method` props of `Form` so that `Form` can be used to post form submissions to a route on the backend ([PR 474](https://github.com/facultyai/dash-bootstrap-components/pull/474))
- Exposes `type` prop on `Button` ([PR 470](https://github.com/facultyai/dash-bootstrap-components/pull/470))

### Fixed

- Cursor becomes pointer when hovering on tabs ([PR 480](https://github.com/facultyai/dash-bootstrap-components/pull/480))
- Current position on page is preserved when using `Spinner` as a loading component ([PR 465](https://github.com/facultyai/dash-bootstrap-components/pull/465))

### Changed

- Updated BootstrapCDN links to use Bootstrap v4.5.2 ([PR 481](https://github.com/facultyai/dash-bootstrap-components/pull/481))

## 0.10.7 - 2020/10/4

### Fixed

- Follow link as external link when `external_link=True` in `DropdownMenuItem` ([PR 458](https://github.com/facultyai/dash-bootstrap-components/pull/458))

## 0.10.6 - 2020/9/10

### Added

- The JavaScript bundle for dash-bootstrap-components can now be fetched from a CDN by setting `serve_locally=False` in `dash.Dash` ([PR 451](https://github.com/facultyai/dash-bootstrap-components/pull/451))

### Fixed

- Wheels are now available on PyPI which should resolve some reported installation issues ([PR 445](https://github.com/facultyai/dash-bootstrap-components/pull/445))

## 0.10.5 - 2020/8/20

### Fixed

- Reverted behaviour of `style` prop from `Progress` component. Bar can be styled with new `bar_style` prop ([PR 441](https://github.com/facultyai/dash-bootstrap-components/pull/441))

## 0.10.4 - 2020/8/19

### Added

- `Select` now has a `placeholder` prop ([PR 431](https://github.com/facultyai/dash-bootstrap-components/pull/431))
- `Checkbox` and `RadioButton` now have a `disabled` prop ([PR 432](https://github.com/facultyai/dash-bootstrap-components/pull/432))

## 0.10.3 - 2020/6/26

### Fixed

- Sets the `active_tab` prop server-side when default is not provided (required for dynamic tab content with callbacks) ([PR 405](https://github.com/facultyai/dash-bootstrap-components/pull/405))
- Fixed `disabled` prop of various link based components ([PR 410](https://github.com/facultyai/dash-bootstrap-components/pull/410))
- Persists null values in `Input` components with `type="number"` ([PR 411](https://github.com/facultyai/dash-bootstrap-components/pull/411))

## 0.10.2 - 2020/6/7

### Added

- Each option in `Select` now accepts `title` as a field ([PR 389](https://github.com/facultyai/dash-bootstrap-components/pull/389))

### Fixed

- No more warnings related to deprecated React lifecycle methods, or controlled components changing to uncontrolled components ([PR 396](https://github.com/facultyai/dash-bootstrap-components/pull/396))
- Automatic dismissal of `Alert` and `Toast` does not happen early if manually toggled. ([PR 396](https://github.com/facultyai/dash-bootstrap-components/pull/396))
- Clicking on a `DropdownMenuItem` consistently dismisses the parent `DropdownMenu` ([PR 396](https://github.com/facultyai/dash-bootstrap-components/pull/396))

## 0.10.1 - 2020/5/30

### Added

- Each option in `RadioItems` and `Checklist` now accepts `input_id` and `label_id` as fields to allow custom ids to be attached to inputs and labels ([PR 379](https://github.com/facultyai/dash-bootstrap-components/pull/379))

### Fixed

- Prevent `Form` component from submitting (and hence refreshing the page) by default. If the submit behaviour is desired set `prevent_default_on_submit=False`. ([PR 385](https://github.com/facultyai/dash-bootstrap-components/pull/385))

### Changed

- The `themes` module now links to Bootstrap and Bootswatch 4.5.0 stylesheets ([PR 380](https://github.com/facultyai/dash-bootstrap-components/pull/380))

## 0.10.0 - 2020/5/9

### Added

- Support for Dash for R, check the documentation [here](/docs/dashr)
- Add support for persistence to `Checkbox` and `RadioButton` components ([PR 365](https://github.com/facultyai/dash-bootstrap-components/pull/365))
- Allow arbitrary CSS colors to be passed to `color` prop of `Spinner` ([PR 366](https://github.com/facultyai/dash-bootstrap-components/pull/366))

### Fixed

- Expose `flip` prop in `Popover` component ([PR 363](https://github.com/facultyai/dash-bootstrap-components/pull/363))

### Changed

- Removed `style` and `class_name` arguments from `Spinner`, replaced with `spinner_style` and `spinnerClassName`. Also added `fullscreen_style` and `fullscreenClassName` for controlling the style of fullscreen spinners. ([PR 344](https://github.com/facultyai/dash-bootstrap-components/pull/366))

## 0.9.2 - 2020/4/5

### Fixed

- Expose `tabIndex` prop in `Input` component ([PR 344](https://github.com/facultyai/dash-bootstrap-components/pull/344))
- Expose `style` prop in `Jumbotron` component ([PR 344](https://github.com/facultyai/dash-bootstrap-components/pull/344))

## 0.9.1 - 2020/3/12

### Fixed

- Restore ability to install module with Python 2 ([PR 329](https://github.com/facultyai/dash-bootstrap-components/pull/329))

## 0.9.0 - 2020/3/11

### Added

- Allow `Spinner` to be used like `dash_core_components.Loading` by passing `children` ([PR 314](https://github.com/facultyai/dash-bootstrap-components/pull/314))

### Fixed

- Prevent `false` being passed to the `target` prop of `Link` components ([PR 315](https://github.com/facultyai/dash-bootstrap-components/pull/315))

## 0.8.3 - 2020/2/8

### Fixed

- Update `Link` components for compatibility with Dash >= 1.9.0 ([PR 311](https://github.com/facultyai/dash-bootstrap-components/pull/311))

## 0.8.2 - 2020/1/28

### Fixed

- Expose `target` prop of `Link` components so that linked pages can be made to open in new tabs ([PR 305](https://github.com/facultyai/dash-bootstrap-components/pull/305))

## 0.8.1 - 2020/1/8

### Fixed

- Ensure `Input` with `type="number"` triggers callbacks when given the value `0` ([PR 299](https://github.com/facultyai/dash-bootstrap-components/pull/299))

## 0.8.0 - 2019/12/24

### Added

- Add `horizontal` prop to `ListGroup` to allow use of horizontal list groups ([PR 292](https://github.com/facultyai/dash-bootstrap-components/pull/292))
- Add support for Dash's persistence feature to `Checklist`, `Input`, `RadioItems`, `Select`, `Textarea` and `Tabs` ([PR 293](https://github.com/facultyai/dash-bootstrap-components/pull/293)).
- Add `toggle` prop to `DropdownMenuItem` which controls whether the parent `DropdownMenu` is dismissed on click. Default behaviour is to dismiss the `DropdownMenu` ([PR 288](https://github.com/facultyai/dash-bootstrap-components/pull/288))

### Changed

- Update BootstrapCDN links in `dash_bootstrap_components.themes` to use Bootstrap 4.4.1 ([PR 289](https://github.com/facultyai/dash-bootstrap-components/pull/289))

### Fixed

- Ensure `DropdownMenu` can be dismissed by `DropdownMenuItem`s being used as internal links ([PR 288](https://github.com/facultyai/dash-bootstrap-components/pull/288))

## 0.7.2 - 2019/10/25

### Added

- Add `href` and `external_link` props to `Button` ([PR 259](https://github.com/facultyai/dash-bootstrap-components/pull/259))
- Add `href`, `external_link`, `n_clicks` and `n_clicks_timestamp` props to `Badge` to allow for use in callbacks and navigation. ([PR 268](https://github.com/facultyai/dash-bootstrap-components/pull/268))

### Fixed

- Allow `InputGroupAddon` to accept multiple children and `RadioButton` or `Checkbox` components ([PR 260](https://github.com/facultyai/dash-bootstrap-components/pull/260))
- Prevent `Tabs` from throwing an error if instantiated without children ([PR 266](https://github.com/facultyai/dash-bootstrap-components/pull/266))
- Enable the `value` prop of `Select` to be used as the Output in a callback ([PR 270](https://github.com/facultyai/dash-bootstrap-components/pull/270))
- Prevent `setProps` from being set on DOM elements ([PR 264](https://github.com/facultyai/dash-bootstrap-components/pull/264))
- Set `key` on list items for `RadioItems` and `Checklist` ([PR 265](https://github.com/facultyai/dash-bootstrap-components/pull/265))

## 0.7.1 - 2019/9/7

### Added

- Add `Select` component that renders a styled `<select>` element. Options and values are specified much like `dash_core_components.Dropdown` ([PR 251](https://github.com/facultyai/dash-bootstrap-components/pull/251))
- Add `duration` prop to `Alert` and `Toast` components allowing users to specify a time in milliseconds after which the `Alert` / `Toast` will dismiss itself ([PR 250](https://github.com/facultyai/dash-bootstrap-components/pull/250))

### Changed

- Internal improvements to `Input` with `type="number"` ([PR 244](https://github.com/facultyai/dash-bootstrap-components/pull/244))

## 0.7.0 - 2019/7/25

### Added

- Add `Toast` component ([PR 234](https://github.com/facultyai/dash-bootstrap-components/pull/234))

### Changed

- Use Bootstrap's custom radio and checkbox styles for `RadioItems` and `Checklist`. This can be overridden by setting `custom=False` ([PR 238](https://github.com/facultyai/dash-bootstrap-components/pull/238))
- Rename `values` prop of `Checklist` to `value` for consistency with other components and with Dash >=1.0.0 ([PR 226](https://github.com/facultyai/dash-bootstrap-components/pull/226))

## 0.6.3 - 2019/6/27

### Added

- Expose `color`, `toggle_style` and `toggleClassName` props in `DropdownMenu` component ([PR 221](https://github.com/facultyai/dash-bootstrap-components/pull/221))

## 0.6.2 - 2019/6/5

### Fixed

- Allow `active_tab` prop of `Tabs` to be set by callbacks ([PR 213](https://github.com/facultyai/dash-bootstrap-components/pull/213))

## 0.6.1 - 2019/5/19

### Added

- Add `"baseline"` and `"stretch"` as possible arguments to `align` in both `Row` and `Col` components ([PR 204](https://github.com/facultyai/dash-bootstrap-components/pull/204))

## 0.6.0 - 2019/5/10

### Added

- Enable the `"up"` direction in `DropdownMenu` ([PR 196](https://github.com/facultyai/dash-bootstrap-components/pull/196))

### Changed

- Remove `CardTitle`, `CardSubtitle` and `CardText` components in favour of applying the `card-title`, `card-subtitle` or `card-text` classes to relevant HTML components ([PR 193](https://github.com/facultyai/dash-bootstrap-components/pull/193))
- Use timestamps rather than Date objects for the `*_timestamp` props in `Input` ([PR 189](https://github.com/facultyai/dash-bootstrap-components/pull/189))
- Rename props of `Input` to use camelCase in order that they are applied properly by dash-renderer ([PR 189](https://github.com/facultyai/dash-bootstrap-components/pull/189))

## 0.5.0 - 2019/4/19

### Added

- Add `Modal` and `Spinner` components ([PR 177](https://github.com/facultyai/dash-bootstrap-components/pull/177))

### Changed

- Allow `DropdownMenu` to be right aligned ([PR 143](https://github.com/facultyai/dash-bootstrap-components/pull/143))

## 0.4.0 - 2019/4/7

### Added

- Add `dismissable` prop to `Alert` ([PR 158](https://github.com/facultyai/dash-bootstrap-components/pull/158))
- Add support the Dash loading states feature ([PR 171](https://github.com/facultyai/dash-bootstrap-components/pull/171))
- Expose the `style` prop in `ButtonGroup` ([PR 167](https://github.com/facultyai/dash-bootstrap-components/pull/167))
- Expose the `disabled` prop in `Input` ([PR 170](https://github.com/facultyai/dash-bootstrap-components/pull/170))
- Expose the `group` prop in `DropdownMenu` ([PR 175](https://github.com/facultyai/dash-bootstrap-components/pull/175))

### Changed

- Remove `DatePickerSingle` and `DatePickerRange` components. Use the versions from dash-core-components instead ([PR 159](https://github.com/facultyai/dash-bootstrap-components/pull/159))

## Older versions

Older versions continue to exist on [PyPI](https://pypi.org/project/dash-bootstrap-components), but we strongly recommend using more recent versions. If you need to know what changed in old versions of dash-bootstrap-components you can check the [releases page](https://github.com/facultyai/dash-bootstrap-components/releases) on GitHub.
