# AUTO GENERATED FILE - DO NOT EDIT

dbcNavLink <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, href=NULL, active=NULL, disabled=NULL, external_link=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, loading_state=NULL, target=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, href=href, active=active, disabled=disabled, external_link=external_link, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, loading_state=loading_state, target=target)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavLink',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'href', 'active', 'disabled', 'external_link', 'n_clicks', 'n_clicks_timestamp', 'loading_state', 'target'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
