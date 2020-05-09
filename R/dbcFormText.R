# AUTO GENERATED FILE - DO NOT EDIT

dbcFormText <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, color=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, color=color, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'FormText',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'color', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
