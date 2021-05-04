# AUTO GENERATED FILE - DO NOT EDIT

dbcCardLink <- function(children=NULL, id=NULL, className=NULL, external_link=NULL, href=NULL, key=NULL, loading_state=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, style=NULL, target=NULL) {
    
    props <- list(children=children, id=id, className=className, external_link=external_link, href=href, key=key, loading_state=loading_state, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, style=style, target=target)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'CardLink',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'external_link', 'href', 'key', 'loading_state', 'n_clicks', 'n_clicks_timestamp', 'style', 'target'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
