# AUTO GENERATED FILE - DO NOT EDIT

dbcBadge <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, color=NULL, pill=NULL, href=NULL, tag=NULL, loading_state=NULL, external_link=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, target=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, color=color, pill=pill, href=href, tag=tag, loading_state=loading_state, external_link=external_link, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, target=target)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Badge',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'color', 'pill', 'href', 'tag', 'loading_state', 'external_link', 'n_clicks', 'n_clicks_timestamp', 'target'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
