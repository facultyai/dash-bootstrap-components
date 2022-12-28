# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcPlaceholder <- function(children=NULL, id=NULL, animation=NULL, button=NULL, className=NULL, class_name=NULL, color=NULL, delay_hide=NULL, delay_show=NULL, key=NULL, lg=NULL, loading_state=NULL, md=NULL, show_initially=NULL, size=NULL, sm=NULL, style=NULL, xl=NULL, xs=NULL, xxl=NULL) {
    
    props <- list(children=children, id=id, animation=animation, button=button, className=className, class_name=class_name, color=color, delay_hide=delay_hide, delay_show=delay_show, key=key, lg=lg, loading_state=loading_state, md=md, show_initially=show_initially, size=size, sm=sm, style=style, xl=xl, xs=xs, xxl=xxl)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Placeholder',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'animation', 'button', 'className', 'class_name', 'color', 'delay_hide', 'delay_show', 'key', 'lg', 'loading_state', 'md', 'show_initially', 'size', 'sm', 'style', 'xl', 'xs', 'xxl'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
