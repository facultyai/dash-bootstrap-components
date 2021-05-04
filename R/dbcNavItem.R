# AUTO GENERATED FILE - DO NOT EDIT

dbcNavItem <- function(children=NULL, id=NULL, active=NULL, className=NULL, key=NULL, loading_state=NULL, style=NULL) {
    
    props <- list(children=children, id=id, active=active, className=className, key=key, loading_state=loading_state, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavItem',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'active', 'className', 'key', 'loading_state', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
