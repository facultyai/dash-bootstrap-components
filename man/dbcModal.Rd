% Auto-generated: do not edit by hand
\name{dbcModal}

\alias{dbcModal}

\title{Modal component}

\description{
Create a toggleable dialog using the Modal component. Toggle the visibility with the `is_open` prop.
}

\usage{
dbcModal(children=NULL, id=NULL, style=NULL, className=NULL,
tag=NULL, is_open=NULL, centered=NULL, scrollable=NULL,
autoFocus=NULL, size=NULL, role=NULL, labelledBy=NULL,
keyboard=NULL, backdrop=NULL, modalClassName=NULL,
backdropClassName=NULL, contentClassName=NULL, fade=NULL,
zIndex=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{className}{Character. Often used with CSS to style elements with common properties.}

\item{tag}{Character. HTML tag to use for the Modal, default: div}

\item{is_open}{Logical. Whether modal is currently open.}

\item{centered}{Logical. If true, vertically center modal on page.}

\item{scrollable}{Logical. It true, scroll the modal body rather than the entire modal when it is too
long to all fit on the screen.}

\item{autoFocus}{Logical. Puts the focus on the modal when initialized.}

\item{size}{Character. Set the size of the modal. Options sm, lg, xl for small, large or extra
large sized modals, or leave undefined for default size.}

\item{role}{Character. The ARIA role attribute.}

\item{labelledBy}{Character. The ARIA labelledby attribute}

\item{keyboard}{Logical. Close the modal when escape key is pressed.}

\item{backdrop}{Logical | a value equal to: 'static'. Includes a modal-backdrop element. Alternatively, specify 'static' for a
backdrop which doesn't close the modal on click.}

\item{modalClassName}{Character. CSS class to apply to the modal.}

\item{backdropClassName}{Character. CSS class to apply to the backdrop.}

\item{contentClassName}{Character. CSS class to apply to the modal content.}

\item{fade}{Logical. Set to false for a modal that simply appears rather than fades into view.}

\item{zIndex}{Numeric | character. Set the z-index of the modal. Default 1050.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

