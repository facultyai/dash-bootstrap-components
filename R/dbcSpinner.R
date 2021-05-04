# AUTO GENERATED FILE - DO NOT EDIT

dbcSpinner <- function(children=NULL, id=NULL, color=NULL, debounce=NULL, fullscreen=NULL, fullscreenClassName=NULL, fullscreen_style=NULL, show_initially=NULL, size=NULL, spinnerClassName=NULL, spinner_style=NULL, type=NULL) {
    
    props <- list(children=children, id=id, color=color, debounce=debounce, fullscreen=fullscreen, fullscreenClassName=fullscreenClassName, fullscreen_style=fullscreen_style, show_initially=show_initially, size=size, spinnerClassName=spinnerClassName, spinner_style=spinner_style, type=type)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Spinner',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'color', 'debounce', 'fullscreen', 'fullscreenClassName', 'fullscreen_style', 'show_initially', 'size', 'spinnerClassName', 'spinner_style', 'type'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
