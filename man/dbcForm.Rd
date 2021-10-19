% Auto-generated: do not edit by hand
\name{dbcForm}

\alias{dbcForm}

\title{Form component}

\description{
The Form component can be used to organise collections of input components and apply consistent styling.
}

\usage{
dbcForm(children=NULL, id=NULL, action=NULL, className=NULL,
class_name=NULL, key=NULL, loading_state=NULL, method=NULL,
n_submit=NULL, n_submit_timestamp=NULL,
prevent_default_on_submit=NULL, style=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{action}{Character. The URI of a program that processes the information submitted via the form.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{method}{A value equal to: 'get', 'post'. Defines which HTTP method to use when submitting the form. Can be GET
(default) or POST.}

\item{n_submit}{Numeric. Number of times the `Enter` key was pressed while the input had focus.}

\item{n_submit_timestamp}{Numeric. Last time that `Enter` was pressed.}

\item{prevent_default_on_submit}{Logical. The form calls preventDefault on submit events. If you want form data to
be posted to the endpoint specified by `action` on submit events, set
prevent_default_on_submit to False. Defaults to True.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

