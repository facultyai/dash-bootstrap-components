# AUTO GENERATED FILE - DO NOT EDIT

dbcNavbar <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, light=NULL, dark=NULL, fixed=NULL, sticky=NULL, color=NULL, role=NULL, tag=NULL, expand=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, light=light, dark=dark, fixed=fixed, sticky=sticky, color=color, role=role, tag=tag, expand=expand, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Navbar',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'light', 'dark', 'fixed', 'sticky', 'color', 'role', 'tag', 'expand', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
