# AUTO GENERATED FILE - DO NOT EDIT

dbcNavItem <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, active=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, active=active, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavItem',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'active', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
