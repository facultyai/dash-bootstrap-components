% Auto-generated: do not edit by hand
\name{dbcFade}

\alias{dbcFade}

\title{Fade component}

\description{
Hide or show content with a fading animation. Visibility of the children is controlled by the `is_open` prop which can be targetted by callbacks.
}

\usage{
dbcFade(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, is_in=NULL,
timeout=NULL, appear=NULL, enter=NULL, exit=NULL, tag=NULL, base_class=NULL,
base_class_active=NULL, loading_state=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{className}{Character. Often used with CSS to style elements with common properties.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{is_in}{Logical. Controls whether the children of the Fade component are currently visible
or not.}

\item{timeout}{Numeric | lists containing elements 'enter', 'exit'.
those elements have the following types:
  - enter (numeric; optional)
  - exit (numeric; optional). The duration of the transition, in milliseconds.

You may specify a single timeout for all transitions like: `timeout=500`
or individually like: timeout={'enter': 300, 'exit': 500}}

\item{appear}{Logical. Show fade-in animation on initial page load. Default: True.}

\item{enter}{Logical. Enable or disable enter transitions. Default: True.}

\item{exit}{Logical. Enable or disable exit transitions. Default: True.}

\item{tag}{Character. HTML tag to use for the fade component. Default: div.}

\item{base_class}{Character. CSS base class. Note that this class is always used, whether the
components are showing or hidden. Default: 'fade'}

\item{base_class_active}{Character. CSS class used when the fade contents are displayed. Default: 'show'.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}
}
