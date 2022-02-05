# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcProgress <- function(children=NULL, id=NULL, animated=NULL, bar=NULL, className=NULL, class_name=NULL, color=NULL, hide_label=NULL, key=NULL, label=NULL, loading_state=NULL, max=NULL, min=NULL, striped=NULL, style=NULL, value=NULL) {
    
    props <- list(children=children, id=id, animated=animated, bar=bar, className=className, class_name=class_name, color=color, hide_label=hide_label, key=key, label=label, loading_state=loading_state, max=max, min=min, striped=striped, style=style, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Progress',
        namespace = 'dash_bootstrap_components',
        propNames = c('children', 'id', 'animated', 'bar', 'className', 'class_name', 'color', 'hide_label', 'key', 'label', 'loading_state', 'max', 'min', 'striped', 'style', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
