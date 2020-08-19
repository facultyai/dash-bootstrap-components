# AUTO GENERATED FILE - DO NOT EDIT

dbcCheckbox <- function(id=NULL, checked=NULL, className=NULL, style=NULL, key=NULL, loading_state=NULL, persistence=NULL, persisted_props=NULL, persistence_type=NULL, disabled=NULL) {
    
    props <- list(id=id, checked=checked, className=className, style=style, key=key, loading_state=loading_state, persistence=persistence, persisted_props=persisted_props, persistence_type=persistence_type, disabled=disabled)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Checkbox',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'checked', 'className', 'style', 'key', 'loading_state', 'persistence', 'persisted_props', 'persistence_type', 'disabled'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
