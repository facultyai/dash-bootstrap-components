# AUTO GENERATED FILE - DO NOT EDIT

dbcDropdownMenuItem <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, active=NULL, disabled=NULL, divider=NULL, header=NULL, href=NULL, toggle=NULL, external_link=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, loading_state=NULL, target=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, active=active, disabled=disabled, divider=divider, header=header, href=href, toggle=toggle, external_link=external_link, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, loading_state=loading_state, target=target)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DropdownMenuItem',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'active', 'disabled', 'divider', 'header', 'href', 'toggle', 'external_link', 'n_clicks', 'n_clicks_timestamp', 'loading_state', 'target'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
