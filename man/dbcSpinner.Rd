% Auto-generated: do not edit by hand
\name{dbcSpinner}

\alias{dbcSpinner}

\title{Spinner component}

\description{
Render Bootstrap style loading spinners using only CSS.  This component can be used standalone to render a loading spinner, or it can be used like `dash_core_components.Loading` by giving it children. In the latter case the chosen spinner will display while the children are loading.
}

\usage{
dbcSpinner(children=NULL, id=NULL, fullscreen_style=NULL,
spinner_style=NULL, fullscreenClassName=NULL,
spinnerClassName=NULL, color=NULL, type=NULL, size=NULL,
fullscreen=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component.}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{fullscreen_style}{Named list. Defines CSS styles for the container when fullscreen=True.}

\item{spinner_style}{Named list. Inline CSS styles to apply to the spinner.}

\item{fullscreenClassName}{Character. Often used with CSS to style elements with common properties.}

\item{spinnerClassName}{Character. CSS class names to apply to the spinner.}

\item{color}{Character. Sets the color of the Spinner. Main options are Bootstrap contextual
colors: primary, secondary, success, info, warning, danger, light, dark,
body, muted, white-50, black-50. You can also specify any valid CSS color
of your choice (e.g. a hex code, a decimal code or a CSS color name)

If not specified will default to text colour.}

\item{type}{Character. The type of spinner. Options 'border' and 'grow'. Default 'border'.}

\item{size}{Character. The spinner size. Options are 'sm', 'md' and 'lg'.}

\item{fullscreen}{Logical. Boolean that determines if the loading spinner will be displayed
full-screen or not.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

