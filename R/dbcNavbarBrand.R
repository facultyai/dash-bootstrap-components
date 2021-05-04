# AUTO GENERATED FILE - DO NOT EDIT

dbcNavbarBrand <- function(children=NULL, id=NULL, className=NULL, external_link=NULL, href=NULL, key=NULL, loading_state=NULL, style=NULL) {
    
    props <- list(children=children, id=id, className=className, external_link=external_link, href=href, key=key, loading_state=loading_state, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavbarBrand',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'className', 'external_link', 'href', 'key', 'loading_state', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
