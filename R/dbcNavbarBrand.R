# AUTO GENERATED FILE - DO NOT EDIT

dbcNavbarBrand <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, external_link=NULL, href=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, external_link=external_link, href=href, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavbarBrand',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'external_link', 'href', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
