# AUTO GENERATED FILE - DO NOT EDIT

dbcCard <- function(children=NULL, id=NULL, body=NULL, className=NULL, color=NULL, inverse=NULL, key=NULL, loading_state=NULL, outline=NULL, style=NULL) {
    
    props <- list(children=children, id=id, body=body, className=className, color=color, inverse=inverse, key=key, loading_state=loading_state, outline=outline, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Card',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'body', 'className', 'color', 'inverse', 'key', 'loading_state', 'outline', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
