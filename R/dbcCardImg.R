# AUTO GENERATED FILE - DO NOT EDIT

dbcCardImg <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, tag=NULL, top=NULL, bottom=NULL, src=NULL, alt=NULL, title=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, tag=tag, top=top, bottom=bottom, src=src, alt=alt, title=title, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'CardImg',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'tag', 'top', 'bottom', 'src', 'alt', 'title', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
