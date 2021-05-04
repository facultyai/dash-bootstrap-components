# AUTO GENERATED FILE - DO NOT EDIT

dbcNavbarToggler <- function(children=NULL, id=NULL, className=NULL, key=NULL, loading_state=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, style=NULL, type=NULL) {
    
    props <- list(children=children, id=id, className=className, key=key, loading_state=loading_state, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, style=style, type=type)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavbarToggler',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'key', 'loading_state', 'n_clicks', 'n_clicks_timestamp', 'style', 'type'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
