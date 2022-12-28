# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcCollapse <- function(children=NULL, id=NULL, className=NULL, class_name=NULL, dimension=NULL, is_open=NULL, key=NULL, loading_state=NULL, navbar=NULL, style=NULL) {
    
    props <- list(children=children, id=id, className=className, class_name=class_name, dimension=dimension, is_open=is_open, key=key, loading_state=loading_state, navbar=navbar, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Collapse',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'class_name', 'dimension', 'is_open', 'key', 'loading_state', 'navbar', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
