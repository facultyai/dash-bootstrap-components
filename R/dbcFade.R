# AUTO GENERATED FILE - DO NOT EDIT

dbcFade <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, is_in=NULL, timeout=NULL, appear=NULL, enter=NULL, exit=NULL, tag=NULL, base_class=NULL, base_class_active=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, is_in=is_in, timeout=timeout, appear=appear, enter=enter, exit=exit, tag=tag, base_class=base_class, base_class_active=base_class_active, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Fade',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'is_in', 'timeout', 'appear', 'enter', 'exit', 'tag', 'base_class', 'base_class_active', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
