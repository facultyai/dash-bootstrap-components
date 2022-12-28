# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcListGroup <- function(children=NULL, id=NULL, className=NULL, class_name=NULL, flush=NULL, horizontal=NULL, key=NULL, loading_state=NULL, numbered=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, className=className, class_name=class_name, flush=flush, horizontal=horizontal, key=key, loading_state=loading_state, numbered=numbered, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ListGroup',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'class_name', 'flush', 'horizontal', 'key', 'loading_state', 'numbered', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
