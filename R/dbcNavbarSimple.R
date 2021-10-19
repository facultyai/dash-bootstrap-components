# AUTO GENERATED FILE - DO NOT EDIT

dbcNavbarSimple <- function(children=NULL, id=NULL, brand=NULL, brand_external_link=NULL, brand_href=NULL, brand_style=NULL, className=NULL, class_name=NULL, color=NULL, dark=NULL, expand=NULL, fixed=NULL, fluid=NULL, key=NULL, light=NULL, links_left=NULL, loading_state=NULL, sticky=NULL, style=NULL) {
    
    props <- list(children=children, id=id, brand=brand, brand_external_link=brand_external_link, brand_href=brand_href, brand_style=brand_style, className=className, class_name=class_name, color=color, dark=dark, expand=expand, fixed=fixed, fluid=fluid, key=key, light=light, links_left=links_left, loading_state=loading_state, sticky=sticky, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'NavbarSimple',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'brand', 'brand_external_link', 'brand_href', 'brand_style', 'className', 'class_name', 'color', 'dark', 'expand', 'fixed', 'fluid', 'key', 'light', 'links_left', 'loading_state', 'sticky', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
