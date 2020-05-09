# AUTO GENERATED FILE - DO NOT EDIT

dbcRadioItems <- function(id=NULL, key=NULL, options=NULL, value=NULL, style=NULL, className=NULL, inputStyle=NULL, inputClassName=NULL, labelStyle=NULL, labelCheckedStyle=NULL, labelClassName=NULL, labelCheckedClassName=NULL, inline=NULL, switch=NULL, custom=NULL, loading_state=NULL, persistence=NULL, persisted_props=NULL, persistence_type=NULL) {
    
    props <- list(id=id, key=key, options=options, value=value, style=style, className=className, inputStyle=inputStyle, inputClassName=inputClassName, labelStyle=labelStyle, labelCheckedStyle=labelCheckedStyle, labelClassName=labelClassName, labelCheckedClassName=labelCheckedClassName, inline=inline, switch=switch, custom=custom, loading_state=loading_state, persistence=persistence, persisted_props=persisted_props, persistence_type=persistence_type)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'RadioItems',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'key', 'options', 'value', 'style', 'className', 'inputStyle', 'inputClassName', 'labelStyle', 'labelCheckedStyle', 'labelClassName', 'labelCheckedClassName', 'inline', 'switch', 'custom', 'loading_state', 'persistence', 'persisted_props', 'persistence_type'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
