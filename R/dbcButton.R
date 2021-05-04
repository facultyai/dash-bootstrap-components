# AUTO GENERATED FILE - DO NOT EDIT

dbcButton <- function(children=NULL, id=NULL, className=NULL, style=NULL, key=NULL, href=NULL, external_link=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, active=NULL, block=NULL, color=NULL, disabled=NULL, size=NULL, outline=NULL, loading_state=NULL, target=NULL, type=NULL, download=NULL, name=NULL, value=NULL) {
    
    props <- list(children=children, id=id, className=className, style=style, key=key, href=href, external_link=external_link, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, active=active, block=block, color=color, disabled=disabled, size=size, outline=outline, loading_state=loading_state, target=target, type=type, download=download, name=name, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Button',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'style', 'key', 'href', 'external_link', 'n_clicks', 'n_clicks_timestamp', 'active', 'block', 'color', 'disabled', 'size', 'outline', 'loading_state', 'target', 'type', 'download', 'name', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
