# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcSwitch <- function(id=NULL, className=NULL, class_name=NULL, disabled=NULL, inputClassName=NULL, inputStyle=NULL, input_class_name=NULL, input_style=NULL, label=NULL, labelClassName=NULL, labelStyle=NULL, label_class_name=NULL, label_id=NULL, label_style=NULL, loading_state=NULL, name=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, style=NULL, value=NULL) {
    
    props <- list(id=id, className=className, class_name=class_name, disabled=disabled, inputClassName=inputClassName, inputStyle=inputStyle, input_class_name=input_class_name, input_style=input_style, label=label, labelClassName=labelClassName, labelStyle=labelStyle, label_class_name=label_class_name, label_id=label_id, label_style=label_style, loading_state=loading_state, name=name, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, style=style, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Switch',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'className', 'class_name', 'disabled', 'inputClassName', 'inputStyle', 'input_class_name', 'input_style', 'label', 'labelClassName', 'labelStyle', 'label_class_name', 'label_id', 'label_style', 'loading_state', 'name', 'persisted_props', 'persistence', 'persistence_type', 'style', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
