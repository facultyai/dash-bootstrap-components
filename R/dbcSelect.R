# AUTO GENERATED FILE - DO NOT EDIT

dbcSelect <- function(id=NULL, bs_size=NULL, className=NULL, disabled=NULL, invalid=NULL, key=NULL, name=NULL, options=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, placeholder=NULL, required=NULL, style=NULL, valid=NULL, value=NULL) {
    
    props <- list(id=id, bs_size=bs_size, className=className, disabled=disabled, invalid=invalid, key=key, name=name, options=options, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, placeholder=placeholder, required=required, style=style, valid=valid, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Select',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'bs_size', 'className', 'disabled', 'invalid', 'key', 'name', 'options', 'persisted_props', 'persistence', 'persistence_type', 'placeholder', 'required', 'style', 'valid', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
