# AUTO GENERATED FILE - DO NOT EDIT

dbcPopoverHeader <- function(children=NULL, id=NULL, className=NULL, key=NULL, loading_state=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, className=className, key=key, loading_state=loading_state, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'PopoverHeader',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'key', 'loading_state', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
