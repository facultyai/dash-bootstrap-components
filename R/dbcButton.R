# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcButton <- function(children=NULL, id=NULL, active=NULL, className=NULL, class_name=NULL, color=NULL, disabled=NULL, download=NULL, external_link=NULL, href=NULL, key=NULL, loading_state=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, name=NULL, outline=NULL, size=NULL, style=NULL, target=NULL, title=NULL, type=NULL, value=NULL) {
    
    props <- list(children=children, id=id, active=active, className=className, class_name=class_name, color=color, disabled=disabled, download=download, external_link=external_link, href=href, key=key, loading_state=loading_state, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, name=name, outline=outline, size=size, style=style, target=target, title=title, type=type, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Button',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'active', 'className', 'class_name', 'color', 'disabled', 'download', 'external_link', 'href', 'key', 'loading_state', 'n_clicks', 'n_clicks_timestamp', 'name', 'outline', 'size', 'style', 'target', 'title', 'type', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
