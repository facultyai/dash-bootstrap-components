# AUTO GENERATED FILE - DO NOT EDIT

dbcCol <- function(children=NULL, id=NULL, align=NULL, className=NULL, class_name=NULL, key=NULL, lg=NULL, loading_state=NULL, md=NULL, sm=NULL, style=NULL, width=NULL, xl=NULL, xs=NULL, xxl=NULL) {
    
    props <- list(children=children, id=id, align=align, className=className, class_name=class_name, key=key, lg=lg, loading_state=loading_state, md=md, sm=sm, style=style, width=width, xl=xl, xs=xs, xxl=xxl)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Col',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'align', 'className', 'class_name', 'key', 'lg', 'loading_state', 'md', 'sm', 'style', 'width', 'xl', 'xs', 'xxl'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
