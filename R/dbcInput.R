# AUTO GENERATED FILE - DO NOT EDIT

dbcInput <- function(id=NULL, autoComplete=NULL, autoFocus=NULL, bs_size=NULL, className=NULL, debounce=NULL, disabled=NULL, inputMode=NULL, invalid=NULL, key=NULL, list=NULL, loading_state=NULL, max=NULL, maxLength=NULL, min=NULL, minLength=NULL, n_blur=NULL, n_blur_timestamp=NULL, n_submit=NULL, n_submit_timestamp=NULL, name=NULL, pattern=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, placeholder=NULL, plaintext=NULL, required=NULL, size=NULL, step=NULL, style=NULL, tabIndex=NULL, type=NULL, valid=NULL, value=NULL) {
    
    props <- list(id=id, autoComplete=autoComplete, autoFocus=autoFocus, bs_size=bs_size, className=className, debounce=debounce, disabled=disabled, inputMode=inputMode, invalid=invalid, key=key, list=list, loading_state=loading_state, max=max, maxLength=maxLength, min=min, minLength=minLength, n_blur=n_blur, n_blur_timestamp=n_blur_timestamp, n_submit=n_submit, n_submit_timestamp=n_submit_timestamp, name=name, pattern=pattern, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, placeholder=placeholder, plaintext=plaintext, required=required, size=size, step=step, style=style, tabIndex=tabIndex, type=type, valid=valid, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Input',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'autoComplete', 'autoFocus', 'bs_size', 'className', 'debounce', 'disabled', 'inputMode', 'invalid', 'key', 'list', 'loading_state', 'max', 'maxLength', 'min', 'minLength', 'n_blur', 'n_blur_timestamp', 'n_submit', 'n_submit_timestamp', 'name', 'pattern', 'persisted_props', 'persistence', 'persistence_type', 'placeholder', 'plaintext', 'required', 'size', 'step', 'style', 'tabIndex', 'type', 'valid', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
