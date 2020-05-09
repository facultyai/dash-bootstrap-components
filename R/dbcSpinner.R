# AUTO GENERATED FILE - DO NOT EDIT

dbcSpinner <- function(children=NULL, id=NULL, fullscreen_style=NULL, spinner_style=NULL, fullscreenClassName=NULL, spinnerClassName=NULL, color=NULL, type=NULL, size=NULL, fullscreen=NULL) {
    
    props <- list(children=children, id=id, fullscreen_style=fullscreen_style, spinner_style=spinner_style, fullscreenClassName=fullscreenClassName, spinnerClassName=spinnerClassName, color=color, type=type, size=size, fullscreen=fullscreen)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Spinner',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'fullscreen_style', 'spinner_style', 'fullscreenClassName', 'spinnerClassName', 'color', 'type', 'size', 'fullscreen'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
