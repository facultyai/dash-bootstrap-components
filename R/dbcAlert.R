# AUTO GENERATED FILE - DO NOT EDIT

dbcAlert <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, color=NULL, is_open=NULL, fade=NULL, dismissable=NULL, duration=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, color=color, is_open=is_open, fade=fade, dismissable=dismissable, duration=duration, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Alert',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'color', 'is_open', 'fade', 'dismissable', 'duration', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
