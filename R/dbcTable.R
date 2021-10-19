# AUTO GENERATED FILE - DO NOT EDIT

dbcTable <- function(children=NULL, id=NULL, bordered=NULL, borderless=NULL, className=NULL, class_name=NULL, color=NULL, dark=NULL, hover=NULL, key=NULL, loading_state=NULL, responsive=NULL, size=NULL, striped=NULL, style=NULL) {
    
    props <- list(children=children, id=id, bordered=bordered, borderless=borderless, className=className, class_name=class_name, color=color, dark=dark, hover=hover, key=key, loading_state=loading_state, responsive=responsive, size=size, striped=striped, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Table',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'bordered', 'borderless', 'className', 'class_name', 'color', 'dark', 'hover', 'key', 'loading_state', 'responsive', 'size', 'striped', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
