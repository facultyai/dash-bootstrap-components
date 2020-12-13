# AUTO GENERATED FILE - DO NOT EDIT

dbcChecklist <- function(id=NULL, options=NULL, value=NULL, className=NULL, style=NULL, key=NULL, inputStyle=NULL, inputClassName=NULL, labelStyle=NULL, labelCheckedStyle=NULL, labelClassName=NULL, labelCheckedClassName=NULL, inline=NULL, switch=NULL, custom=NULL, loading_state=NULL, persistence=NULL, persisted_props=NULL, persistence_type=NULL, name=NULL) {
    
    props <- list(id=id, options=options, value=value, className=className, style=style, key=key, inputStyle=inputStyle, inputClassName=inputClassName, labelStyle=labelStyle, labelCheckedStyle=labelCheckedStyle, labelClassName=labelClassName, labelCheckedClassName=labelCheckedClassName, inline=inline, switch=switch, custom=custom, loading_state=loading_state, persistence=persistence, persisted_props=persisted_props, persistence_type=persistence_type, name=name)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Checklist',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'options', 'value', 'className', 'style', 'key', 'inputStyle', 'inputClassName', 'labelStyle', 'labelCheckedStyle', 'labelClassName', 'labelCheckedClassName', 'inline', 'switch', 'custom', 'loading_state', 'persistence', 'persisted_props', 'persistence_type', 'name'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
