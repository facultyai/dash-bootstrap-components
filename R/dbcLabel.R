# AUTO GENERATED FILE - DO NOT EDIT

dbcLabel <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, hidden=NULL, size=NULL, html_for=NULL, width=NULL, xs=NULL, sm=NULL, md=NULL, lg=NULL, xl=NULL, align=NULL, color=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, hidden=hidden, size=size, html_for=html_for, width=width, xs=xs, sm=sm, md=md, lg=lg, xl=xl, align=align, color=color, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Label',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'hidden', 'size', 'html_for', 'width', 'xs', 'sm', 'md', 'lg', 'xl', 'align', 'color', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
