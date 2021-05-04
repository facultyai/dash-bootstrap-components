# AUTO GENERATED FILE - DO NOT EDIT

dbcChecklist <- function(id=NULL, className=NULL, custom=NULL, inline=NULL, inputClassName=NULL, inputStyle=NULL, key=NULL, labelCheckedClassName=NULL, labelCheckedStyle=NULL, labelClassName=NULL, labelStyle=NULL, loading_state=NULL, name=NULL, options=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, style=NULL, switch=NULL, value=NULL) {
    
    props <- list(id=id, className=className, custom=custom, inline=inline, inputClassName=inputClassName, inputStyle=inputStyle, key=key, labelCheckedClassName=labelCheckedClassName, labelCheckedStyle=labelCheckedStyle, labelClassName=labelClassName, labelStyle=labelStyle, loading_state=loading_state, name=name, options=options, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, style=style, switch=switch, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Checklist',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'className', 'custom', 'inline', 'inputClassName', 'inputStyle', 'key', 'labelCheckedClassName', 'labelCheckedStyle', 'labelClassName', 'labelStyle', 'loading_state', 'name', 'options', 'persisted_props', 'persistence', 'persistence_type', 'style', 'switch', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
