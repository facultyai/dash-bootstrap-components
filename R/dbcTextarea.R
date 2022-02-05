# AUTO GENERATED FILE - DO NOT EDIT

#' @export
dbcTextarea <- function(id=NULL, accessKey=NULL, accesskey=NULL, autoFocus=NULL, autofocus=NULL, className=NULL, class_name=NULL, cols=NULL, contentEditable=NULL, contenteditable=NULL, contextMenu=NULL, contextmenu=NULL, debounce=NULL, dir=NULL, disabled=NULL, draggable=NULL, form=NULL, hidden=NULL, invalid=NULL, key=NULL, lang=NULL, loading_state=NULL, maxLength=NULL, maxlength=NULL, minLength=NULL, minlength=NULL, n_blur=NULL, n_blur_timestamp=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, n_submit=NULL, n_submit_timestamp=NULL, name=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, placeholder=NULL, readOnly=NULL, readonly=NULL, required=NULL, rows=NULL, size=NULL, spellCheck=NULL, spellcheck=NULL, style=NULL, tabIndex=NULL, tabindex=NULL, title=NULL, valid=NULL, value=NULL, wrap=NULL) {
    
    props <- list(id=id, accessKey=accessKey, accesskey=accesskey, autoFocus=autoFocus, autofocus=autofocus, className=className, class_name=class_name, cols=cols, contentEditable=contentEditable, contenteditable=contenteditable, contextMenu=contextMenu, contextmenu=contextmenu, debounce=debounce, dir=dir, disabled=disabled, draggable=draggable, form=form, hidden=hidden, invalid=invalid, key=key, lang=lang, loading_state=loading_state, maxLength=maxLength, maxlength=maxlength, minLength=minLength, minlength=minlength, n_blur=n_blur, n_blur_timestamp=n_blur_timestamp, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, n_submit=n_submit, n_submit_timestamp=n_submit_timestamp, name=name, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, placeholder=placeholder, readOnly=readOnly, readonly=readonly, required=required, rows=rows, size=size, spellCheck=spellCheck, spellcheck=spellcheck, style=style, tabIndex=tabIndex, tabindex=tabindex, title=title, valid=valid, value=value, wrap=wrap)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Textarea',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'accessKey', 'accesskey', 'autoFocus', 'autofocus', 'className', 'class_name', 'cols', 'contentEditable', 'contenteditable', 'contextMenu', 'contextmenu', 'debounce', 'dir', 'disabled', 'draggable', 'form', 'hidden', 'invalid', 'key', 'lang', 'loading_state', 'maxLength', 'maxlength', 'minLength', 'minlength', 'n_blur', 'n_blur_timestamp', 'n_clicks', 'n_clicks_timestamp', 'n_submit', 'n_submit_timestamp', 'name', 'persisted_props', 'persistence', 'persistence_type', 'placeholder', 'readOnly', 'readonly', 'required', 'rows', 'size', 'spellCheck', 'spellcheck', 'style', 'tabIndex', 'tabindex', 'title', 'valid', 'value', 'wrap'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
