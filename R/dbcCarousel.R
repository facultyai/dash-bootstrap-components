# AUTO GENERATED FILE - DO NOT EDIT

dbcCarousel <- function(id=NULL, active_index=NULL, className=NULL, class_name=NULL, controls=NULL, indicators=NULL, interval=NULL, items=NULL, loading_state=NULL, ride=NULL, slide=NULL, style=NULL, variant=NULL) {
    
    props <- list(id=id, active_index=active_index, className=className, class_name=class_name, controls=controls, indicators=indicators, interval=interval, items=items, loading_state=loading_state, ride=ride, slide=slide, style=style, variant=variant)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Carousel',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'active_index', 'className', 'class_name', 'controls', 'indicators', 'interval', 'items', 'loading_state', 'ride', 'slide', 'style', 'variant'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
