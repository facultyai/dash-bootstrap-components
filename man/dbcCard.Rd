% Auto-generated: do not edit by hand
\name{dbcCard}

\alias{dbcCard}

\title{Card component}

\description{
Component for creating Bootstrap cards. Use in conjunction with CardBody, CardImg, CardLink, CardHeader and CardFooter. Can also be used in conjunction with CardColumns, CardDeck, CardGroup for different layout options.
}

\usage{
dbcCard(children=NULL, id=NULL, style=NULL, className=NULL,
key=NULL, color=NULL, body=NULL, outline=NULL, inverse=NULL,
loading_state=NULL)
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

\item{color}{Character. Card color, options: primary, secondary, success, info, warning, danger,
light, dark. Default is light.}

\item{body}{Logical. Apply the `card-body` class to the card, so that there is no need to also
include a CardBody component in the children of this Card. Default: False}

\item{outline}{Logical. Apply color styling to just the border of the card.}

\item{inverse}{Logical. Invert text colours for use with a darker background.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

