# AUTO GENERATED FILE - DO NOT EDIT

dbcNavbarSimple <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, brand=NULL, brand_href=NULL, brand_style=NULL, brand_external_link=NULL, fluid=NULL, light=NULL, dark=NULL, fixed=NULL, sticky=NULL, color=NULL, expand=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, brand=brand, brand_href=brand_href, brand_style=brand_style, brand_external_link=brand_external_link, fluid=fluid, light=light, dark=dark, fixed=fixed, sticky=sticky, color=color, expand=expand, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavbarSimple',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'brand', 'brand_href', 'brand_style', 'brand_external_link', 'fluid', 'light', 'dark', 'fixed', 'sticky', 'color', 'expand', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
