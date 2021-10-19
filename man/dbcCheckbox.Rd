% Auto-generated: do not edit by hand
\name{dbcCheckbox}

\alias{dbcCheckbox}

\title{Checkbox component}

\description{
Checklist is a component that encapsulates several checkboxes. The values and labels of the checklist is specified in the `options` property and the checked items are specified with the `value` property. Each checkbox is rendered as an input / label pair. `Checklist` must be given an `id` to work properly.
}

\usage{
dbcCheckbox(id=NULL, className=NULL, class_name=NULL, disabled=NULL,
inputClassName=NULL, inputStyle=NULL, input_class_name=NULL,
input_style=NULL, label=NULL, labelClassName=NULL,
labelStyle=NULL, label_class_name=NULL, label_id=NULL,
label_style=NULL, loading_state=NULL, name=NULL,
persisted_props=NULL, persistence=NULL,
persistence_type=NULL, style=NULL, value=NULL)
}

\arguments{
\item{id}{Character. The ID of this component, used to identify dash components in callbacks.
The ID needs to be unique across all of the components in an app.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

The class of the container (div)}

\item{class_name}{Character. The class of the container (div)}

\item{disabled}{Logical. Disable the Checkbox.}

\item{inputClassName}{Character. **DEPRECATED** Use `input_class_name` instead.

The class of the <input> checkbox element}

\item{inputStyle}{Named list. **DEPRECATED** Use `input_style` instead.

The style of the <input> checkbox element.}

\item{input_class_name}{Character. The class of the <input> checkbox element}

\item{input_style}{Named list. The style of the <input> checkbox element.}

\item{label}{Character. The label of the <input> element}

\item{labelClassName}{Character. **DEPRECATED** Use `label_class_name` instead.

CSS classes to apply to the <label> element for each item.}

\item{labelStyle}{Named list. **DEPRECATED** Use `label_style` instead.

Inline style arguments to apply to the <label> element for each item.}

\item{label_class_name}{Character. CSS classes to apply to the <label> element for each item.}

\item{label_id}{Character. The id of the label}

\item{label_style}{Named list. Inline style arguments to apply to the <label> element for each item.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{name}{Character. The name of the control, which is submitted with the form data.}

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

\item{style}{Named list. The style of the container (div)}

\item{value}{Logical. The value of the input.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

