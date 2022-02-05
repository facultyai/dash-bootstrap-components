# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcFormText <- function(children=NULL, id=NULL, className=NULL, class_name=NULL, color=NULL, key=NULL, loading_state=NULL, style=NULL) {
    
    props <- list(children=children, id=id, className=className, class_name=class_name, color=color, key=key, loading_state=loading_state, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'FormText',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'class_name', 'color', 'key', 'loading_state', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
