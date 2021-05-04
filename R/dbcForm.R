# AUTO GENERATED FILE - DO NOT EDIT

dbcForm <- function(children=NULL, id=NULL, action=NULL, className=NULL, inline=NULL, key=NULL, loading_state=NULL, method=NULL, n_submit=NULL, n_submit_timestamp=NULL, prevent_default_on_submit=NULL, style=NULL) {
    
    props <- list(children=children, id=id, action=action, className=className, inline=inline, key=key, loading_state=loading_state, method=method, n_submit=n_submit, n_submit_timestamp=n_submit_timestamp, prevent_default_on_submit=prevent_default_on_submit, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Form',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'action', 'className', 'inline', 'key', 'loading_state', 'method', 'n_submit', 'n_submit_timestamp', 'prevent_default_on_submit', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
