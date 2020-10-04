---
title: Changelog
---

# Changelog

This page documents notable changes in dash-bootstrap-components releases.

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

- Removed `style` and `className` arguments from `Spinner`, replaced with `spinner_style` and `spinnerClassName`. Also added `fullscreen_style` and `fullscreenClassName` for controlling the style of fullscreen spinners. ([PR 344](https://github.com/facultyai/dash-bootstrap-components/pull/366))

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
