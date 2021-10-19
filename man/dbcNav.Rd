% Auto-generated: do not edit by hand
\name{dbcNav}

\alias{dbcNav}

\title{Nav component}

\description{
Nav can be used to group together a collection of navigation links.
}

\usage{
dbcNav(children=NULL, id=NULL, card=NULL, className=NULL,
class_name=NULL, fill=NULL, horizontal=NULL, justified=NULL,
key=NULL, loading_state=NULL, navbar=NULL,
navbar_scroll=NULL, pills=NULL, style=NULL, vertical=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{card}{Logical. Set to True when using Nav with pills styling inside a CardHeader.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{fill}{Logical. Expand the nav items to fill available horizontal space.}

\item{horizontal}{A value equal to: 'start', 'center', 'end', 'between', 'around'. Specify the horizontal alignment of the NavItems. Options are 'start',
'center', or 'end'.}

\item{justified}{Logical. Expand the nav items to fill available horizontal space, making sure
every nav item has the same width.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{navbar}{Logical. Set to True if using Nav in Navbar component. This applies the `navbar-nav`
class to the Nav which uses more lightweight styles to match the parent
Navbar better.}

\item{navbar_scroll}{Logical. Enable vertical scrolling within the toggleable contents of a collapsed Navbar.}

\item{pills}{Logical. Apply pill styling to nav items. Active items will be indicated by a pill.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{vertical}{Logical | character. Stack NavItems vertically. Set to True for a vertical Nav on all screen
sizes, or pass one of the Bootstrap breakpoints ('xs', 'sm', 'md', 'lg',
'xl') for a Nav which is vertical at that breakpoint and above, and
horizontal on smaller screens.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

