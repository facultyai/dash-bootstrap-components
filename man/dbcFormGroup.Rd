% Auto-generated: do not edit by hand
\name{dbcFormGroup}

\alias{dbcFormGroup}

\title{FormGroup component}

\description{
A component for grouping together inputs, labels, text and feedback.
}

\usage{
dbcFormGroup(children=NULL, id=NULL, check=NULL, className=NULL,
inline=NULL, key=NULL, loading_state=NULL, row=NULL,
style=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{check}{Logical. Apply `form-check` class instead of `form-group`. Useful when positioning
labels with checkbox / radio inputs. Usually it will be better to use the
pre-built dbc.Checklist or dbc.RadioItems components.}

\item{className}{Character. Often used with CSS to style elements with common properties.}

\item{inline}{Logical. If check is True, apply the `form-check-inline` class in addition to
`form-check`. If you want to make an inline list of checkboxes / radios
we recommend using either dbc.Checklist or dbc.RadioItems with inline=True

This prop has no effect if check=False.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{row}{Logical. Apply row class to FormGroup to allow labels and inputs to be displayed
horizontally in a row.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

