# AUTO GENERATED FILE - DO NOT EDIT

dbcPagination <- function(id=NULL, active_page=NULL, className=NULL, class_name=NULL, first_last=NULL, fully_expanded=NULL, loading_state=NULL, max_value=NULL, min_value=NULL, previous_next=NULL, size=NULL, step=NULL, style=NULL) {
    
    props <- list(id=id, active_page=active_page, className=className, class_name=class_name, first_last=first_last, fully_expanded=fully_expanded, loading_state=loading_state, max_value=max_value, min_value=min_value, previous_next=previous_next, size=size, step=step, style=style)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Pagination',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'active_page', 'className', 'class_name', 'first_last', 'fully_expanded', 'loading_state', 'max_value', 'min_value', 'previous_next', 'size', 'step', 'style'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
