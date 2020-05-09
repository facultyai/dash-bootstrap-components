% Auto-generated: do not edit by hand
\name{dbcButton}

\alias{dbcButton}

\title{Button component}

\description{
A component for creating Bootstrap buttons with different style options. The Button component can act as a HTML button, link (<a>) or can be used like a dash_core_components style `Link` for navigating between pages of a Dash app.  Use the `n_clicks` prop to trigger callbacks when the button has been clicked.
}

\usage{
dbcButton(children=NULL, id=NULL, className=NULL, style=NULL, key=NULL, href=NULL,
external_link=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, active=NULL,
block=NULL, color=NULL, disabled=NULL, size=NULL, outline=NULL,
loading_state=NULL, target=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component.}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. Often used with CSS to style elements with common properties.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{href}{Character. Pass a URL (relative or absolute) to make the menu entry a link.}

\item{external_link}{Logical. If true, the browser will treat this as an external link,
forcing a page refresh at the new location. If false,
this just changes the location without triggering a page
refresh. Use this if you are observing dcc.Location, for
instance. Defaults to true for absolute URLs and false
otherwise.}

\item{n_clicks}{Numeric. An integer that represents the number of times
that this element has been clicked on.}

\item{n_clicks_timestamp}{Numeric. Use of *_timestamp props has been deprecated in Dash in favour of dash.callback_context.
See "How do I determine which Input has changed?" in the Dash FAQs https://dash.plot.ly/faqs.

An integer that represents the time (in ms since 1970)
at which n_clicks changed. This can be used to tell
which button was changed most recently.}

\item{active}{Logical. Whether button is in active state. Default: False.}

\item{block}{Logical. Create block level button, one that spans the full width of its parent.
Default: False}

\item{color}{Character. Button color, options: primary, secondary, success, info, warning, danger,
link. Default: secondary.}

\item{disabled}{Logical. Disable button (make unclickable). Default: False.}

\item{size}{Character. Button size, options: 'lg', 'md', 'sm'.}

\item{outline}{Logical. Set outline button style, which removes background images and colors for a
lightweight style.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{target}{Character. Target attribute to pass on to link if using Button as an external link.}
}
