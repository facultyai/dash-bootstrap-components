% Auto-generated: do not edit by hand
\name{dbcSelect}

\alias{dbcSelect}

\title{Select component}

\description{
Create a HTML select element with Bootstrap styles. Specify options as a list of dictionaries with keys label, value and disabled.
}

\usage{
dbcSelect(id=NULL, bs_size=NULL, className=NULL, disabled=NULL,
invalid=NULL, key=NULL, name=NULL, options=NULL,
persisted_props=NULL, persistence=NULL,
persistence_type=NULL, placeholder=NULL, required=NULL,
style=NULL, valid=NULL, value=NULL)
}

\arguments{
\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{bs_size}{Character. Set the size of the Input. Options: 'sm' (small), 'md' (medium)
or 'lg' (large). Default is 'md'.}

\item{className}{Character. Often used with CSS to style elements with common properties.}

\item{disabled}{Logical. Set to True to disable the Select.}

\item{invalid}{Logical. Apply invalid style to the Input for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=False to display.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{name}{Character. The name of the control, which is submitted with the form data.}

\item{options}{List. An array of options for the select}

\item{persisted_props}{List of a value equal to: 'value's. Properties whose user interactions will persist after refreshing the
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

\item{placeholder}{Character. Placeholder text to display before a selection is made.}

\item{required}{A value equal to: 'required', 'required' | logical. This attribute specifies that the user must fill in a value before
submitting a form. It cannot be used when the type attribute is hidden,
image, or a button type (submit, reset, or button). The :optional and
:required CSS pseudo-classes will be applied to the field as appropriate.
required is an HTML boolean attribute - it is enabled by a boolean or
'required'. Alternative capitalizations `REQUIRED`
are also acccepted.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{valid}{Logical. Apply valid style to the Input for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=True to display.}

\item{value}{Character | numeric. The value of the currently selected option.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

