# AUTO GENERATED FILE - DO NOT EDIT

dbcNavbarToggler <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, type=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, type=type, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavbarToggler',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'type', 'n_clicks', 'n_clicks_timestamp', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
