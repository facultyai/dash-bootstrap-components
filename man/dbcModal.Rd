% Auto-generated: do not edit by hand
\name{dbcModal}

\alias{dbcModal}

\title{Modal component}

\description{
Create a toggleable dialog using the Modal component. Toggle the visibility with the `is_open` prop.
}

\usage{
dbcModal(children=NULL, id=NULL, autoFocus=NULL, autofocus=NULL,
backdrop=NULL, backdropClassName=NULL,
backdrop_class_name=NULL, centered=NULL, className=NULL,
class_name=NULL, contentClassName=NULL,
content_class_name=NULL, fade=NULL, fullscreen=NULL,
is_open=NULL, keyboard=NULL, labelledBy=NULL,
labelledby=NULL, modalClassName=NULL, modal_class_name=NULL,
role=NULL, scrollable=NULL, size=NULL, style=NULL, tag=NULL,
zIndex=NULL, zindex=NULL)
}

\arguments{
\item{children}{A list of or a singular dash component, string or number. The children of this component}

\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{autoFocus}{Logical. **DEPRECATED** Use `autofocus` instead

	Puts the focus on the modal when initialized.}

\item{autofocus}{Logical. Puts the focus on the modal when initialized.}

\item{backdrop}{Logical | a value equal to: 'static'. Includes a modal-backdrop element. Alternatively, specify 'static' for a
backdrop which doesn't close the modal on click.}

\item{backdropClassName}{Character. **DEPRECATED** Use `backdrop_class_name` instead

CSS class to apply to the backdrop.}

\item{backdrop_class_name}{Character. CSS class to apply to the backdrop.}

\item{centered}{Logical. If true, vertically center modal on page.}

\item{className}{Character. **DEPRECATED** Use `class_name` instead.

Often used with CSS to style elements with common properties.}

\item{class_name}{Character. Often used with CSS to style elements with common properties.}

\item{contentClassName}{Character. **DEPRECATED** Use `content_class_name` instead

CSS class to apply to the modal content.}

\item{content_class_name}{Character. CSS class to apply to the modal content.}

\item{fade}{Logical. Set to false for a modal that simply appears rather than fades into view.}

\item{fullscreen}{A value equal to: proptypes.bool, proptypes.oneof(['sm-down', 'md-down', 'lg-down', 'xl-down', 'xxl-down']). Renders a fullscreen modal. Specifying a breakpoint will render the modal
as fullscreen below the breakpoint size.}

\item{is_open}{Logical. Whether modal is currently open.}

\item{keyboard}{Logical. Close the modal when escape key is pressed.}

\item{labelledBy}{Character. **DEPRECATED** Use `labelledby` instead

The ARIA labelledby attribute}

\item{labelledby}{Character. The ARIA labelledby attribute}

\item{modalClassName}{Character. **DEPRECATED** Use `modal_class_name` instead

CSS class to apply to the modal.}

\item{modal_class_name}{Character. CSS class to apply to the modal.}

\item{role}{Character. The ARIA role attribute.}

\item{scrollable}{Logical. It true, scroll the modal body rather than the entire modal when it is too
long to all fit on the screen.}

\item{size}{Character. Set the size of the modal. Options sm, lg, xl for small, large or extra
large sized modals, or leave undefined for default size.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{tag}{Character. HTML tag to use for the Modal, default: div}

\item{zIndex}{Numeric | character. **DEPRECATED** Use `zindex` instead

Set the z-index of the modal. Default 1050.}

\item{zindex}{Numeric | character. Set the z-index of the modal. Default 1050.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

