# AUTO GENERATED FILE - DO NOT EDIT

dbcCardImg <- function(children=NULL, id=NULL, alt=NULL, bottom=NULL, className=NULL, key=NULL, loading_state=NULL, src=NULL, style=NULL, tag=NULL, title=NULL, top=NULL) {
    
    props <- list(children=children, id=id, alt=alt, bottom=bottom, className=className, key=key, loading_state=loading_state, src=src, style=style, tag=tag, title=title, top=top)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'CardImg',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'alt', 'bottom', 'className', 'key', 'loading_state', 'src', 'style', 'tag', 'title', 'top'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
