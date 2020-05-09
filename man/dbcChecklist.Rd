% Auto-generated: do not edit by hand
\name{dbcChecklist}

\alias{dbcChecklist}

\title{Checklist component}

\description{
Checklist is a component that encapsulates several checkboxes. The values and labels of the checklist is specified in the `options` property and the checked items are specified with the `value` property. Each checkbox is rendered as an input / label pair.  If `Checklist` is given an `id` (which is necessary for use in callbacks) it will use Bootstrap's custom checkbox style, which hides the native browser checkbox and renders a custom CSS alternative. See the Bootstrap docs for details.  https://getbootstrap.com/docs/4.4/components/forms/#checkboxes-and-radios-1
}

\usage{
dbcChecklist(id=NULL, options=NULL, value=NULL, className=NULL,
style=NULL, key=NULL, inputStyle=NULL, inputClassName=NULL,
labelStyle=NULL, labelCheckedStyle=NULL,
labelClassName=NULL, labelCheckedClassName=NULL,
inline=NULL, switch=NULL, custom=NULL, loading_state=NULL,
persistence=NULL, persisted_props=NULL,
persistence_type=NULL)
}

\arguments{
\item{id}{Character. The ID of this component, used to identify dash components in callbacks.
The ID needs to be unique across all of the components in an app.}

\item{options}{List. An array of options}

\item{value}{List of character | numerics. The currently selected value}

\item{className}{Character. The class of the container (div)}

\item{style}{Named list. The style of the container (div)}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{inputStyle}{Named list. The style of the <input> checkbox element. Only used if custom=False}

\item{inputClassName}{Character. The class of the <input> checkbox element}

\item{labelStyle}{Named list. Inline style arguments to apply to the <label> element for each item.}

\item{labelCheckedStyle}{Named list. Additional inline style arguments to apply to <label> elements on checked
items.}

\item{labelClassName}{Character. CSS classes to apply to the <label> element for each item.}

\item{labelCheckedClassName}{Character. Additional CSS classes to apply to the <label> element when the
corresponding checkbox is checked.}

\item{inline}{Logical. Arrange Checklist inline}

\item{switch}{Logical. Set to True to render toggle-like switches instead of checkboxes. Ignored
if custom=False}

\item{custom}{Logical. RadioItems uses custom radio buttons by default. To use native radios set
custom to False.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{persistence}{Logical | character | numeric. Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.}

\item{persisted_props}{List of a value equal to: 'value's. Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.}

\item{persistence_type}{A value equal to: 'local', 'session', 'memory'. Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

