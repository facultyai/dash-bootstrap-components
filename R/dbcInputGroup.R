# AUTO GENERATED FILE - DO NOT EDIT

dbcInputGroup <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, size=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, size=size, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'InputGroup',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'size', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
