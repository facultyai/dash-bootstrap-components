% Auto-generated: do not edit by hand
\name{dbcAlert}

\alias{dbcAlert}

\title{Alert component}

\description{
Alert allows you to create contextual feedback messages on user actions.  Control the visibility using callbacks with the `is_open` prop, or set it to auto-dismiss with the `duration` prop.
}

\usage{
dbcAlert(children=NULL, id=NULL, className=NULL, class_name=NULL,
color=NULL, dismissable=NULL, duration=NULL, fade=NULL,
is_open=NULL, key=NULL, loading_state=NULL,
persisted_props=NULL, persistence=NULL,
persistence_type=NULL, style=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component.}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{color}{Character. Alert color, options: primary, secondary, success, info, warning, danger,
link or any valid CSS color of
your choice (e.g. a hex code, a decimal code or a CSS color name)
Default: secondary.}

\item{dismissable}{Logical. If true, add a close button that allows Alert to be dismissed.}

\item{duration}{Numeric. Duration in milliseconds after which the Alert dismisses itself.}

\item{fade}{Logical. If True, a fade animation will be applied when `is_open` is toggled. If
False the Alert will simply appear and disappear.}

\item{is_open}{Logical. Whether alert is open. Default: True.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{persisted_props}{List of a value equal to: 'is_open's. Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.}

\item{persistence}{Logical | character | numeric. Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.}

\item{persistence_type}{A value equal to: 'local', 'session', 'memory'. Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

