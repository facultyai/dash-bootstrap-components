# AUTO GENERATED FILE - DO NOT EDIT

dbcForm <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, action=NULL, method=NULL, inline=NULL, n_submit=NULL, n_submit_timestamp=NULL, prevent_default_on_submit=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, action=action, method=method, inline=inline, n_submit=n_submit, n_submit_timestamp=n_submit_timestamp, prevent_default_on_submit=prevent_default_on_submit, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Form',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'action', 'method', 'inline', 'n_submit', 'n_submit_timestamp', 'prevent_default_on_submit', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
