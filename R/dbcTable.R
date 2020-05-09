# AUTO GENERATED FILE - DO NOT EDIT

dbcTable <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, tag=NULL, size=NULL, bordered=NULL, borderless=NULL, striped=NULL, dark=NULL, hover=NULL, responsive=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, tag=tag, size=size, bordered=bordered, borderless=borderless, striped=striped, dark=dark, hover=hover, responsive=responsive, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Table',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'tag', 'size', 'bordered', 'borderless', 'striped', 'dark', 'hover', 'responsive', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
