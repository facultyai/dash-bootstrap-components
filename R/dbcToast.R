# AUTO GENERATED FILE - DO NOT EDIT

dbcToast <- function(children=NULL, id=NULL, style=NULL, className=NULL, header_style=NULL, headerClassName=NULL, body_style=NULL, bodyClassName=NULL, tag=NULL, is_open=NULL, key=NULL, fade=NULL, header=NULL, dismissable=NULL, duration=NULL, n_dismiss=NULL, n_dismiss_timestamp=NULL, icon=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, header_style=header_style, headerClassName=headerClassName, body_style=body_style, bodyClassName=bodyClassName, tag=tag, is_open=is_open, key=key, fade=fade, header=header, dismissable=dismissable, duration=duration, n_dismiss=n_dismiss, n_dismiss_timestamp=n_dismiss_timestamp, icon=icon)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Toast',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'header_style', 'headerClassName', 'body_style', 'bodyClassName', 'tag', 'is_open', 'key', 'fade', 'header', 'dismissable', 'duration', 'n_dismiss', 'n_dismiss_timestamp', 'icon'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
