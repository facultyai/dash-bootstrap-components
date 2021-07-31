# AUTO GENERATED FILE - DO NOT EDIT

dbcBadge <- function(children=NULL, id=NULL, className=NULL, color=NULL, external_link=NULL, href=NULL, key=NULL, loading_state=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, pill=NULL, style=NULL, tag=NULL, target=NULL, title=NULL) {
    
    props <- list(children=children, id=id, className=className, color=color, external_link=external_link, href=href, key=key, loading_state=loading_state, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, pill=pill, style=style, tag=tag, target=target, title=title)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Badge',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'color', 'external_link', 'href', 'key', 'loading_state', 'n_clicks', 'n_clicks_timestamp', 'pill', 'style', 'tag', 'target', 'title'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
