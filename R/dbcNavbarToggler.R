# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcNavbarToggler <- function(children=NULL, id=NULL, className=NULL, class_name=NULL, key=NULL, loading_state=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, style=NULL, type=NULL) {
    
    props <- list(children=children, id=id, className=className, class_name=class_name, key=key, loading_state=loading_state, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, style=style, type=type)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavbarToggler',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'class_name', 'key', 'loading_state', 'n_clicks', 'n_clicks_timestamp', 'style', 'type'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
