# AUTO GENERATED FILE - DO NOT EDIT

dbcRadioButton <- function(id=NULL, checked=NULL, className=NULL, disabled=NULL, key=NULL, loading_state=NULL, name=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, style=NULL) {
    
    props <- list(id=id, checked=checked, className=className, disabled=disabled, key=key, loading_state=loading_state, name=name, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'RadioButton',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'checked', 'className', 'disabled', 'key', 'loading_state', 'name', 'persisted_props', 'persistence', 'persistence_type', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
