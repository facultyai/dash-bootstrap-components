# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcSpinner <- function(children=NULL, id=NULL, color=NULL, delay_hide=NULL, delay_show=NULL, fullscreen=NULL, fullscreenClassName=NULL, fullscreen_class_name=NULL, fullscreen_style=NULL, show_initially=NULL, size=NULL, spinnerClassName=NULL, spinner_class_name=NULL, spinner_style=NULL, type=NULL) {
    
    props <- list(children=children, id=id, color=color, delay_hide=delay_hide, delay_show=delay_show, fullscreen=fullscreen, fullscreenClassName=fullscreenClassName, fullscreen_class_name=fullscreen_class_name, fullscreen_style=fullscreen_style, show_initially=show_initially, size=size, spinnerClassName=spinnerClassName, spinner_class_name=spinner_class_name, spinner_style=spinner_style, type=type)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Spinner',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'color', 'delay_hide', 'delay_show', 'fullscreen', 'fullscreenClassName', 'fullscreen_class_name', 'fullscreen_style', 'show_initially', 'size', 'spinnerClassName', 'spinner_class_name', 'spinner_style', 'type'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
