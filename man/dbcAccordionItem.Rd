% Auto-generated: do not edit by hand
\name{dbcAccordionItem}

\alias{dbcAccordionItem}

\title{AccordionItem component}

\description{
A component to build up the children of the accordion.
}

\usage{
dbcAccordionItem(children=NULL, id=NULL, className=NULL, class_name=NULL,
item_id=NULL, loading_state=NULL, style=NULL, title=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{item_id}{Character. Optional identifier for item used for determining which item is visible
if not specified, and AccordionItem is being used inside Accordion component, the itemId
will be set to "item-i" where i is (zero indexed) position of item in list
items pased to Accordion component.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{title}{Character. The title on display in the collapsed accordion item.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

