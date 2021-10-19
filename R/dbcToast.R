# AUTO GENERATED FILE - DO NOT EDIT

dbcToast <- function(children=NULL, id=NULL, bodyClassName=NULL, body_class_name=NULL, body_style=NULL, className=NULL, class_name=NULL, color=NULL, dismissable=NULL, duration=NULL, header=NULL, headerClassName=NULL, header_class_name=NULL, header_style=NULL, icon=NULL, is_open=NULL, key=NULL, loading_state=NULL, n_dismiss=NULL, n_dismiss_timestamp=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, bodyClassName=bodyClassName, body_class_name=body_class_name, body_style=body_style, className=className, class_name=class_name, color=color, dismissable=dismissable, duration=duration, header=header, headerClassName=headerClassName, header_class_name=header_class_name, header_style=header_style, icon=icon, is_open=is_open, key=key, loading_state=loading_state, n_dismiss=n_dismiss, n_dismiss_timestamp=n_dismiss_timestamp, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Toast',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'bodyClassName', 'body_class_name', 'body_style', 'className', 'class_name', 'color', 'dismissable', 'duration', 'header', 'headerClassName', 'header_class_name', 'header_style', 'icon', 'is_open', 'key', 'loading_state', 'n_dismiss', 'n_dismiss_timestamp', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
