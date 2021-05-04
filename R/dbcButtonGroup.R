# AUTO GENERATED FILE - DO NOT EDIT

dbcButtonGroup <- function(children=NULL, id=NULL, className=NULL, key=NULL, loading_state=NULL, size=NULL, style=NULL, vertical=NULL) {
    
    props <- list(children=children, id=id, className=className, key=key, loading_state=loading_state, size=size, style=style, vertical=vertical)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ButtonGroup',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'key', 'loading_state', 'size', 'style', 'vertical'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
