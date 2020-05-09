# AUTO GENERATED FILE - DO NOT EDIT

dbcTooltip <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, target=NULL, boundaries_element=NULL, hide_arrow=NULL, container=NULL, delay=NULL, innerClassName=NULL, arrowClassName=NULL, autohide=NULL, placement=NULL, offset=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, target=target, boundaries_element=boundaries_element, hide_arrow=hide_arrow, container=container, delay=delay, innerClassName=innerClassName, arrowClassName=arrowClassName, autohide=autohide, placement=placement, offset=offset, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Tooltip',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'target', 'boundaries_element', 'hide_arrow', 'container', 'delay', 'innerClassName', 'arrowClassName', 'autohide', 'placement', 'offset', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
