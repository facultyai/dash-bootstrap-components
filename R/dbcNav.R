# AUTO GENERATED FILE - DO NOT EDIT

dbcNav <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, pills=NULL, card=NULL, fill=NULL, justified=NULL, vertical=NULL, horizontal=NULL, navbar=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, pills=pills, card=card, fill=fill, justified=justified, vertical=vertical, horizontal=horizontal, navbar=navbar, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Nav',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'pills', 'card', 'fill', 'justified', 'vertical', 'horizontal', 'navbar', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
