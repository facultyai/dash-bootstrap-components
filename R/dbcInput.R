# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcInput <- function(id=NULL, autoComplete=NULL, autoFocus=NULL, autocomplete=NULL, autofocus=NULL, className=NULL, class_name=NULL, debounce=NULL, disabled=NULL, html_size=NULL, inputMode=NULL, inputmode=NULL, invalid=NULL, key=NULL, list=NULL, loading_state=NULL, max=NULL, maxLength=NULL, maxlength=NULL, min=NULL, minLength=NULL, minlength=NULL, n_blur=NULL, n_blur_timestamp=NULL, n_submit=NULL, n_submit_timestamp=NULL, name=NULL, pattern=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, placeholder=NULL, plaintext=NULL, readonly=NULL, required=NULL, size=NULL, step=NULL, style=NULL, tabIndex=NULL, tabindex=NULL, type=NULL, valid=NULL, value=NULL) {
    
    props <- list(id=id, autoComplete=autoComplete, autoFocus=autoFocus, autocomplete=autocomplete, autofocus=autofocus, className=className, class_name=class_name, debounce=debounce, disabled=disabled, html_size=html_size, inputMode=inputMode, inputmode=inputmode, invalid=invalid, key=key, list=list, loading_state=loading_state, max=max, maxLength=maxLength, maxlength=maxlength, min=min, minLength=minLength, minlength=minlength, n_blur=n_blur, n_blur_timestamp=n_blur_timestamp, n_submit=n_submit, n_submit_timestamp=n_submit_timestamp, name=name, pattern=pattern, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, placeholder=placeholder, plaintext=plaintext, readonly=readonly, required=required, size=size, step=step, style=style, tabIndex=tabIndex, tabindex=tabindex, type=type, valid=valid, value=value)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Input',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'autoComplete', 'autoFocus', 'autocomplete', 'autofocus', 'className', 'class_name', 'debounce', 'disabled', 'html_size', 'inputMode', 'inputmode', 'invalid', 'key', 'list', 'loading_state', 'max', 'maxLength', 'maxlength', 'min', 'minLength', 'minlength', 'n_blur', 'n_blur_timestamp', 'n_submit', 'n_submit_timestamp', 'name', 'pattern', 'persisted_props', 'persistence', 'persistence_type', 'placeholder', 'plaintext', 'readonly', 'required', 'size', 'step', 'style', 'tabIndex', 'tabindex', 'type', 'valid', 'value'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
