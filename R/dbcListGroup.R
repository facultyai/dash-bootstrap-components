# AUTO GENERATED FILE - DO NOT EDIT

dbcListGroup <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, tag=NULL, flush=NULL, loading_state=NULL, horizontal=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, tag=tag, flush=flush, loading_state=loading_state, horizontal=horizontal)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ListGroup',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'tag', 'flush', 'loading_state', 'horizontal'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
