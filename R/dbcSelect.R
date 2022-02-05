# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcSelect <- function(id=NULL, className=NULL, class_name=NULL, disabled=NULL, html_size=NULL, invalid=NULL, key=NULL, name=NULL, options=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, placeholder=NULL, required=NULL, size=NULL, style=NULL, valid=NULL, value=NULL) {
    
    props <- list(id=id, className=className, class_name=class_name, disabled=disabled, html_size=html_size, invalid=invalid, key=key, name=name, options=options, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, placeholder=placeholder, required=required, size=size, style=style, valid=valid, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Select',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'className', 'class_name', 'disabled', 'html_size', 'invalid', 'key', 'name', 'options', 'persisted_props', 'persistence', 'persistence_type', 'placeholder', 'required', 'size', 'style', 'valid', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
