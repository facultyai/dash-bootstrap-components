# AUTO GENERATED FILE - DO NOT EDIT

dbcInput <- function(id=NULL, style=NULL, className=NULL, key=NULL, type=NULL, value=NULL, disabled=NULL, autoComplete=NULL, autoFocus=NULL, inputMode=NULL, list=NULL, max=NULL, maxLength=NULL, min=NULL, minLength=NULL, step=NULL, size=NULL, bs_size=NULL, valid=NULL, invalid=NULL, required=NULL, plaintext=NULL, placeholder=NULL, name=NULL, pattern=NULL, n_submit=NULL, n_submit_timestamp=NULL, n_blur=NULL, n_blur_timestamp=NULL, debounce=NULL, loading_state=NULL, persistence=NULL, persisted_props=NULL, persistence_type=NULL, tabIndex=NULL) {
    
    props <- list(id=id, style=style, className=className, key=key, type=type, value=value, disabled=disabled, autoComplete=autoComplete, autoFocus=autoFocus, inputMode=inputMode, list=list, max=max, maxLength=maxLength, min=min, minLength=minLength, step=step, size=size, bs_size=bs_size, valid=valid, invalid=invalid, required=required, plaintext=plaintext, placeholder=placeholder, name=name, pattern=pattern, n_submit=n_submit, n_submit_timestamp=n_submit_timestamp, n_blur=n_blur, n_blur_timestamp=n_blur_timestamp, debounce=debounce, loading_state=loading_state, persistence=persistence, persisted_props=persisted_props, persistence_type=persistence_type, tabIndex=tabIndex)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Input',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'style', 'className', 'key', 'type', 'value', 'disabled', 'autoComplete', 'autoFocus', 'inputMode', 'list', 'max', 'maxLength', 'min', 'minLength', 'step', 'size', 'bs_size', 'valid', 'invalid', 'required', 'plaintext', 'placeholder', 'name', 'pattern', 'n_submit', 'n_submit_timestamp', 'n_blur', 'n_blur_timestamp', 'debounce', 'loading_state', 'persistence', 'persisted_props', 'persistence_type', 'tabIndex'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
