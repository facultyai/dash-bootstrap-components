# AUTO GENERATED FILE - DO NOT EDIT

dbcToast <- function(children=NULL, id=NULL, bodyClassName=NULL, body_style=NULL, className=NULL, dismissable=NULL, duration=NULL, fade=NULL, header=NULL, headerClassName=NULL, header_style=NULL, icon=NULL, is_open=NULL, key=NULL, n_dismiss=NULL, n_dismiss_timestamp=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, bodyClassName=bodyClassName, body_style=body_style, className=className, dismissable=dismissable, duration=duration, fade=fade, header=header, headerClassName=headerClassName, header_style=header_style, icon=icon, is_open=is_open, key=key, n_dismiss=n_dismiss, n_dismiss_timestamp=n_dismiss_timestamp, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Toast',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'bodyClassName', 'body_style', 'className', 'dismissable', 'duration', 'fade', 'header', 'headerClassName', 'header_style', 'icon', 'is_open', 'key', 'n_dismiss', 'n_dismiss_timestamp', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
