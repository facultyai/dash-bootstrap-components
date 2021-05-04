# AUTO GENERATED FILE - DO NOT EDIT

dbcListGroupItemText <- function(children=NULL, id=NULL, className=NULL, color=NULL, key=NULL, loading_state=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, className=className, color=color, key=key, loading_state=loading_state, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ListGroupItemText',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'color', 'key', 'loading_state', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
