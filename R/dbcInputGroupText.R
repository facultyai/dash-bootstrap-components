# AUTO GENERATED FILE - DO NOT EDIT

dbcInputGroupText <- function(children=NULL, id=NULL, style=NULL, key=NULL, className=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, key=key, className=className, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'InputGroupText',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'key', 'className', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
