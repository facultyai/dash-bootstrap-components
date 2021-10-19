# AUTO GENERATED FILE - DO NOT EDIT

dbcCardBody <- function(children=NULL, id=NULL, className=NULL, class_name=NULL, key=NULL, loading_state=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, className=className, class_name=class_name, key=key, loading_state=loading_state, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'CardBody',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'class_name', 'key', 'loading_state', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
