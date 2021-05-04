# AUTO GENERATED FILE - DO NOT EDIT

dbcListGroupItem <- function(children=NULL, id=NULL, action=NULL, active=NULL, className=NULL, color=NULL, disabled=NULL, external_link=NULL, href=NULL, key=NULL, loading_state=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, style=NULL, tag=NULL, target=NULL) {
    
    props <- list(children=children, id=id, action=action, active=active, className=className, color=color, disabled=disabled, external_link=external_link, href=href, key=key, loading_state=loading_state, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, style=style, tag=tag, target=target)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'ListGroupItem',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'action', 'active', 'className', 'color', 'disabled', 'external_link', 'href', 'key', 'loading_state', 'n_clicks', 'n_clicks_timestamp', 'style', 'tag', 'target'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
