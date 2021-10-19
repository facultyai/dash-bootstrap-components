% Auto-generated: do not edit by hand
\name{dbcOffcanvas}

\alias{dbcOffcanvas}

\title{Offcanvas component}

\description{
Create a toggleable hidden sidebar using the Offcanvas component. Toggle the visibility with the `is_open` prop.
}

\usage{
dbcOffcanvas(children=NULL, id=NULL, autoFocus=NULL, autofocus=NULL,
backdrop=NULL, backdropClassName=NULL,
backdrop_class_name=NULL, className=NULL, class_name=NULL,
close_button=NULL, is_open=NULL, keyboard=NULL,
labelledBy=NULL, labelledby=NULL, loading_state=NULL,
placement=NULL, scrollable=NULL, style=NULL, title=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{autoFocus}{Logical. **DEPRECATED** Use `autofocus` instead

	Puts the focus on the modal when initialized.}

\item{autofocus}{Logical. Puts the focus on the offcanvas when initialized.}

\item{backdrop}{Logical | a value equal to: 'static'. Includes an offcanvas-backdrop element. Alternatively, specify 'static' for a
backdrop which doesn't close the modal on click.}

\item{backdropClassName}{Character. **DEPRECATED** - Use backdrop_class_name instead.

CSS class to apply to the backdrop.}

\item{backdrop_class_name}{Character. CSS class to apply to the backdrop.}

\item{className}{Character. **DEPRECATED** - Use class_name instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{close_button}{Logical. Specify whether the Component should contain a close button
in the header}

\item{is_open}{Logical. Whether offcanvas is currently open.}

\item{keyboard}{Logical. Close the offcanvas when escape key is pressed.}

\item{labelledBy}{Character. **DEPRECATED** Use `labelledby` instead

The ARIA labelledby attribute}

\item{labelledby}{Character. The ARIA labelledby attribute}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{placement}{A value equal to: 'start', 'end', 'top', 'bottom'. Which side of the viewport the offcanvas will appear from.}

\item{scrollable}{Logical. Allow body scrolling while offcanvas is open.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{title}{Character. The header title}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

