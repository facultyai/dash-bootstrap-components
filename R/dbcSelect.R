# AUTO GENERATED FILE - DO NOT EDIT

dbcSelect <- function(id=NULL, style=NULL, className=NULL, key=NULL, placeholder=NULL, value=NULL, options=NULL, disabled=NULL, valid=NULL, invalid=NULL, bs_size=NULL, persistence=NULL, persisted_props=NULL, persistence_type=NULL, name=NULL) {
    
    props <- list(id=id, style=style, className=className, key=key, placeholder=placeholder, value=value, options=options, disabled=disabled, valid=valid, invalid=invalid, bs_size=bs_size, persistence=persistence, persisted_props=persisted_props, persistence_type=persistence_type, name=name)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Select',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'style', 'className', 'key', 'placeholder', 'value', 'options', 'disabled', 'valid', 'invalid', 'bs_size', 'persistence', 'persisted_props', 'persistence_type', 'name'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
