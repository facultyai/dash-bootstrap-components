# AUTO GENERATED FILE - DO NOT EDIT

dbcTooltip <- function(children=NULL, id=NULL, arrowClassName=NULL, autohide=NULL, boundaries_element=NULL, className=NULL, container=NULL, delay=NULL, hide_arrow=NULL, innerClassName=NULL, key=NULL, loading_state=NULL, offset=NULL, placement=NULL, style=NULL, target=NULL) {
    
    props <- list(children=children, id=id, arrowClassName=arrowClassName, autohide=autohide, boundaries_element=boundaries_element, className=className, container=container, delay=delay, hide_arrow=hide_arrow, innerClassName=innerClassName, key=key, loading_state=loading_state, offset=offset, placement=placement, style=style, target=target)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tooltip',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'arrowClassName', 'autohide', 'boundaries_element', 'className', 'container', 'delay', 'hide_arrow', 'innerClassName', 'key', 'loading_state', 'offset', 'placement', 'style', 'target'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
