% Auto-generated: do not edit by hand
\name{dbcSelect}

\alias{dbcSelect}

\title{Select component}

\description{
Create a HTML select element with Bootstrap styles. Specify options as a list of dictionaries with keys label, value and disabled.
}

\usage{
dbcSelect(id=NULL, style=NULL, className=NULL, key=NULL, value=NULL, options=NULL,
disabled=NULL, valid=NULL, invalid=NULL, bs_size=NULL, persistence=NULL,
persisted_props=NULL, persistence_type=NULL)
}

\arguments{
\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{className}{Character. Often used with CSS to style elements with common properties.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{value}{Character | numeric. The value of the currently selected option.}

\item{options}{List. An array of options for the select}

\item{disabled}{Logical. Set to True to disable the Select.}

\item{valid}{Logical. Apply valid style to the Input for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=True to display.}

\item{invalid}{Logical. Apply invalid style to the Input for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=False to display.}

\item{bs_size}{Character. Set the size of the Input. Options: 'sm' (small), 'md' (medium)
or 'lg' (large). Default is 'md'.}

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
