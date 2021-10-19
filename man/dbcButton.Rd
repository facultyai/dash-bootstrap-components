% Auto-generated: do not edit by hand
\name{dbcButton}

\alias{dbcButton}

\title{Button component}

\description{
A component for creating Bootstrap buttons with different style options. The Button component can act as a HTML button, link (<a>) or can be used like a dash_core_components style `Link` for navigating between pages of a Dash app.  Use the `n_clicks` prop to trigger callbacks when the button has been clicked.
}

\usage{
dbcButton(children=NULL, id=NULL, active=NULL, className=NULL,
class_name=NULL, color=NULL, disabled=NULL, download=NULL,
external_link=NULL, href=NULL, key=NULL, loading_state=NULL,
n_clicks=NULL, n_clicks_timestamp=NULL, name=NULL,
outline=NULL, size=NULL, style=NULL, target=NULL,
title=NULL, type=NULL, value=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component.}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{active}{Logical. Whether button is in active state. Default: False.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{color}{Character. Button color, options: primary, secondary, success, info, warning, danger,
link. Default: secondary.}

\item{disabled}{Logical. Disable button (make unclickable). Default: False.}

\item{download}{Character. Indicates that the hyperlink is to be used for downloading a resource.}

\item{external_link}{Logical. If true, the browser will treat this as an external link,
forcing a page refresh at the new location. If false,
this just changes the location without triggering a page
refresh. Use this if you are observing dcc.Location, for
instance. Defaults to true for absolute URLs and false
otherwise.}

\item{href}{Character. Pass a URL (relative or absolute) to make the menu entry a link.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{n_clicks}{Numeric. An integer that represents the number of times
that this element has been clicked on.}

\item{n_clicks_timestamp}{Numeric. Use of *_timestamp props has been deprecated in Dash in favour of dash.callback_context.
See "How do I determine which Input has changed?" in the Dash FAQs https://dash.plot.ly/faqs.

An integer that represents the time (in ms since 1970)
at which n_clicks changed. This can be used to tell
which button was changed most recently.}

\item{name}{Character. The name of the button, submitted as a pair with the button’s value as part
of the form data.}

\item{outline}{Logical. Set outline button style, which removes background images and colors for a
lightweight style.}

\item{size}{Character. Button size, options: 'lg', 'md', 'sm'.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{target}{Character. Target attribute to pass on to link if using Button as an external link.}

\item{title}{Character. Sets the title attribute of the underlying HTML button.}

\item{type}{A value equal to: 'button', 'reset', 'submit'. The default behavior of the button. Possible values are: "button", "reset",
"submit". If left unspecified the default depends on usage: for buttons
associated with a form (e.g. a dbc.Button inside a dbc.Form) the default is
"submit". Otherwise the default is "button".}

\item{value}{Character. Defines the value associated with the button’s name when it’s submitted
with the form data. This value is passed to the server in params when the
form is submitted.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

