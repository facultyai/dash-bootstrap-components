# AUTO GENERATED FILE - DO NOT EDIT

dbcFade <- function(children=NULL, id=NULL, appear=NULL, className=NULL, class_name=NULL, enter=NULL, exit=NULL, is_in=NULL, key=NULL, loading_state=NULL, style=NULL, tag=NULL, timeout=NULL) {
    
    props <- list(children=children, id=id, appear=appear, className=className, class_name=class_name, enter=enter, exit=exit, is_in=is_in, key=key, loading_state=loading_state, style=style, tag=tag, timeout=timeout)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Fade',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'appear', 'className', 'class_name', 'enter', 'exit', 'is_in', 'key', 'loading_state', 'style', 'tag', 'timeout'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
