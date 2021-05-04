# AUTO GENERATED FILE - DO NOT EDIT

dbcNav <- function(children=NULL, id=NULL, card=NULL, className=NULL, fill=NULL, horizontal=NULL, justified=NULL, key=NULL, loading_state=NULL, navbar=NULL, pills=NULL, style=NULL, vertical=NULL) {
    
    props <- list(children=children, id=id, card=card, className=className, fill=fill, horizontal=horizontal, justified=justified, key=key, loading_state=loading_state, navbar=navbar, pills=pills, style=style, vertical=vertical)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Nav',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'card', 'className', 'fill', 'horizontal', 'justified', 'key', 'loading_state', 'navbar', 'pills', 'style', 'vertical'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
