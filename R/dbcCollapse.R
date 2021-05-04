# AUTO GENERATED FILE - DO NOT EDIT

dbcCollapse <- function(children=NULL, id=NULL, className=NULL, is_open=NULL, key=NULL, loading_state=NULL, navbar=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, className=className, is_open=is_open, key=key, loading_state=loading_state, navbar=navbar, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Collapse',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'is_open', 'key', 'loading_state', 'navbar', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
