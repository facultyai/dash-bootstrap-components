# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcLabel <- function(children=NULL, id=NULL, align=NULL, check=NULL, className=NULL, class_name=NULL, color=NULL, hidden=NULL, html_for=NULL, key=NULL, lg=NULL, loading_state=NULL, md=NULL, size=NULL, sm=NULL, style=NULL, width=NULL, xl=NULL, xs=NULL) {
    
    props <- list(children=children, id=id, align=align, check=check, className=className, class_name=class_name, color=color, hidden=hidden, html_for=html_for, key=key, lg=lg, loading_state=loading_state, md=md, size=size, sm=sm, style=style, width=width, xl=xl, xs=xs)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Label',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'align', 'check', 'className', 'class_name', 'color', 'hidden', 'html_for', 'key', 'lg', 'loading_state', 'md', 'size', 'sm', 'style', 'width', 'xl', 'xs'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
