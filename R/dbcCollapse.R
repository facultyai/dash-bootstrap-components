# AUTO GENERATED FILE - DO NOT EDIT

dbcCollapse <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, tag=NULL, is_open=NULL, navbar=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, tag=tag, is_open=is_open, navbar=navbar, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Collapse',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'tag', 'is_open', 'navbar', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
