# AUTO GENERATED FILE - DO NOT EDIT

dbcInputGroup <- function(children=NULL, id=NULL, className=NULL, class_name=NULL, key=NULL, loading_state=NULL, size=NULL, style=NULL) {
    
    props <- list(children=children, id=id, className=className, class_name=class_name, key=key, loading_state=loading_state, size=size, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'InputGroup',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'class_name', 'key', 'loading_state', 'size', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
