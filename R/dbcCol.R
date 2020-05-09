# AUTO GENERATED FILE - DO NOT EDIT

dbcCol <- function(children=NULL, id=NULL, style=NULL, className=NULL, key=NULL, width=NULL, xs=NULL, sm=NULL, md=NULL, lg=NULL, xl=NULL, align=NULL, loading_state=NULL) {
    
    props <- list(children=children, id=id, style=style, className=className, key=key, width=width, xs=xs, sm=sm, md=md, lg=lg, xl=xl, align=align, loading_state=loading_state)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Col',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'style', 'className', 'key', 'width', 'xs', 'sm', 'md', 'lg', 'xl', 'align', 'loading_state'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
