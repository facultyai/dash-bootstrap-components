% Auto-generated: do not edit by hand
\name{dbcToast}

\alias{dbcToast}

\title{Toast component}

\description{
Toasts can be used to push messages and notifactions to users. Control visibility of the toast with the `is_open` prop, or use `duration` to set a timer for auto-dismissal.
}

\usage{
dbcToast(children=NULL, id=NULL, bodyClassName=NULL,
body_class_name=NULL, body_style=NULL, className=NULL,
class_name=NULL, color=NULL, dismissable=NULL,
duration=NULL, header=NULL, headerClassName=NULL,
header_class_name=NULL, header_style=NULL, icon=NULL,
is_open=NULL, key=NULL, loading_state=NULL, n_dismiss=NULL,
n_dismiss_timestamp=NULL, style=NULL, tag=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{bodyClassName}{Character. **DEPRECATED** - use `body_class_name` instead.

Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the body of the toast.}

\item{body_class_name}{Character. Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the body of the toast.}

\item{body_style}{Named list. Defines CSS styles which will override styles previously set. The styles
set here apply to the body of the toast.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{color}{Character. Toast color, options: primary, secondary, success, info, warning, danger,
light, dark. Default: secondary.}

\item{dismissable}{Logical. Set to True to add a dismiss button to the header which will close the
toast on click}

\item{duration}{Numeric. Duration in milliseconds after which the Alert dismisses itself.}

\item{header}{Character. Text to populate the header with}

\item{headerClassName}{Character. **DEPRECATED** - use `header_class_name` instead

Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the header of the toast.}

\item{header_class_name}{Character. Often used with CSS to style elements with common properties. The classes
specified with this prop will be applied to the header of the toast.}

\item{header_style}{Named list. Defines CSS styles which will override styles previously set. The styles
set here apply to the header of the toast.}

\item{icon}{Character. Add a contextually coloured icon to the header of the toast. Options are:
"primary", "secondary", "success", "warning", "danger", "info", "light" or
"dark".}

\item{is_open}{Logical. Whether Toast is currently open.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{n_dismiss}{Numeric. An integer that represents the number of times that the dismiss button has
been clicked on.}

\item{n_dismiss_timestamp}{Numeric. Use of *_timestamp props has been deprecated in Dash in favour of dash.callback_context.
See "How do I determine which Input has changed?" in the Dash FAQs https://dash.plot.ly/faqs.

An integer that represents the time (in ms since 1970) at which n_dismiss
changed. This can be used to tell which button was changed most recently.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{tag}{Character. HTML tag to use for the Toast, default: div}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

