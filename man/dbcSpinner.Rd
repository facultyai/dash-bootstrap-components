% Auto-generated: do not edit by hand
\name{dbcSpinner}

\alias{dbcSpinner}

\title{Spinner component}

\description{
Render Bootstrap style loading spinners using only CSS.  This component can be used standalone to render a loading spinner, or it can be used like `dash_core_components.Loading` by giving it children. In the latter case the chosen spinner will display while the children are loading.
}

\usage{
dbcSpinner(children=NULL, id=NULL, color=NULL, delay_hide=NULL,
delay_show=NULL, fullscreen=NULL, fullscreenClassName=NULL,
fullscreen_class_name=NULL, fullscreen_style=NULL,
show_initially=NULL, size=NULL, spinnerClassName=NULL,
spinner_class_name=NULL, spinner_style=NULL, type=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component.}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{color}{Character. Sets the color of the Spinner. Main options are Bootstrap contextual
colors: primary, secondary, success, info, warning, danger, light, dark,
body, muted, white-50, black-50. You can also specify any valid CSS color
of your choice (e.g. a hex code, a decimal code or a CSS color name)

If not specified will default to text colour.}

\item{delay_hide}{Numeric. When using the spinner as a loading spinner, add a time delay (in ms) to
the spinner being removed to prevent flickering.}

\item{delay_show}{Numeric. When using the spinner as a loading spinner, add a time delay (in ms) to
the spinner being shown after the loading_state is set to true.}

\item{fullscreen}{Logical. Boolean that determines if the loading spinner will be displayed
full-screen or not.}

\item{fullscreenClassName}{Character. **DEPRECATED** - use `fullscreen_class_name` instead.

Often used with CSS to style elements with common properties.}

\item{fullscreen_class_name}{Character. Often used with CSS to style elements with common properties.}

\item{fullscreen_style}{Named list. Defines CSS styles for the container when fullscreen=True.}

\item{show_initially}{Logical. Whether the Spinner should show on app start-up before the loading state
has been determined. Default True.}

\item{size}{Character. The spinner size. Options are 'sm', and 'md'.}

\item{spinnerClassName}{Character. **DEPRECATED** - use `spinner_class_name` instead.

CSS class names to apply to the spinner.}

\item{spinner_class_name}{Character. CSS class names to apply to the spinner.}

\item{spinner_style}{Named list. Inline CSS styles to apply to the spinner.}

\item{type}{Character. The type of spinner. Options 'border' and 'grow'. Default 'border'.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

