# AUTO GENERATED FILE - DO NOT EDIT

dbcChecklist <- function(id=NULL, className=NULL, class_name=NULL, inline=NULL, inputCheckedClassName=NULL, inputCheckedStyle=NULL, inputClassName=NULL, inputStyle=NULL, input_checked_class_name=NULL, input_checked_style=NULL, input_class_name=NULL, input_style=NULL, key=NULL, labelCheckedClassName=NULL, labelCheckedStyle=NULL, labelClassName=NULL, labelStyle=NULL, label_checked_class_name=NULL, label_checked_style=NULL, label_class_name=NULL, label_style=NULL, loading_state=NULL, name=NULL, options=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, style=NULL, switch=NULL, value=NULL) {
    
    props <- list(id=id, className=className, class_name=class_name, inline=inline, inputCheckedClassName=inputCheckedClassName, inputCheckedStyle=inputCheckedStyle, inputClassName=inputClassName, inputStyle=inputStyle, input_checked_class_name=input_checked_class_name, input_checked_style=input_checked_style, input_class_name=input_class_name, input_style=input_style, key=key, labelCheckedClassName=labelCheckedClassName, labelCheckedStyle=labelCheckedStyle, labelClassName=labelClassName, labelStyle=labelStyle, label_checked_class_name=label_checked_class_name, label_checked_style=label_checked_style, label_class_name=label_class_name, label_style=label_style, loading_state=loading_state, name=name, options=options, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, style=style, switch=switch, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Checklist',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'className', 'class_name', 'inline', 'inputCheckedClassName', 'inputCheckedStyle', 'inputClassName', 'inputStyle', 'input_checked_class_name', 'input_checked_style', 'input_class_name', 'input_style', 'key', 'labelCheckedClassName', 'labelCheckedStyle', 'labelClassName', 'labelStyle', 'label_checked_class_name', 'label_checked_style', 'label_class_name', 'label_style', 'loading_state', 'name', 'options', 'persisted_props', 'persistence', 'persistence_type', 'style', 'switch', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
