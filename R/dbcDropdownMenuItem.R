# AUTO GENERATED FILE - DO NOT EDIT

dbcDropdownMenuItem <- function(children=NULL, id=NULL, active=NULL, className=NULL, disabled=NULL, divider=NULL, external_link=NULL, header=NULL, href=NULL, key=NULL, loading_state=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, style=NULL, target=NULL, toggle=NULL) {
    
    props <- list(children=children, id=id, active=active, className=className, disabled=disabled, divider=divider, external_link=external_link, header=header, href=href, key=key, loading_state=loading_state, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, style=style, target=target, toggle=toggle)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'DropdownMenuItem',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'active', 'className', 'disabled', 'divider', 'external_link', 'header', 'href', 'key', 'loading_state', 'n_clicks', 'n_clicks_timestamp', 'style', 'target', 'toggle'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
