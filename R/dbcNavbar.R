# AUTO GENERATED FILE - DO NOT EDIT

dbcNavbar <- function(children=NULL, id=NULL, className=NULL, color=NULL, dark=NULL, expand=NULL, fixed=NULL, key=NULL, light=NULL, loading_state=NULL, role=NULL, sticky=NULL, style=NULL, tag=NULL) {
    
    props <- list(children=children, id=id, className=className, color=color, dark=dark, expand=expand, fixed=fixed, key=key, light=light, loading_state=loading_state, role=role, sticky=sticky, style=style, tag=tag)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Navbar',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'color', 'dark', 'expand', 'fixed', 'key', 'light', 'loading_state', 'role', 'sticky', 'style', 'tag'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
