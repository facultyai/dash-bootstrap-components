# AUTO GENERATED FILE - DO NOT EDIT

dbcTextarea <- function(id=NULL, accessKey=NULL, autoFocus=NULL, bs_size=NULL, className=NULL, cols=NULL, contentEditable=NULL, contextMenu=NULL, debounce=NULL, dir=NULL, disabled=NULL, draggable=NULL, form=NULL, hidden=NULL, invalid=NULL, key=NULL, lang=NULL, loading_state=NULL, maxLength=NULL, minLength=NULL, n_blur=NULL, n_blur_timestamp=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, n_submit=NULL, n_submit_timestamp=NULL, name=NULL, persisted_props=NULL, persistence=NULL, persistence_type=NULL, placeholder=NULL, readOnly=NULL, required=NULL, rows=NULL, spellCheck=NULL, style=NULL, tabIndex=NULL, title=NULL, valid=NULL, value=NULL, wrap=NULL) {
    
    props <- list(id=id, accessKey=accessKey, autoFocus=autoFocus, bs_size=bs_size, className=className, cols=cols, contentEditable=contentEditable, contextMenu=contextMenu, debounce=debounce, dir=dir, disabled=disabled, draggable=draggable, form=form, hidden=hidden, invalid=invalid, key=key, lang=lang, loading_state=loading_state, maxLength=maxLength, minLength=minLength, n_blur=n_blur, n_blur_timestamp=n_blur_timestamp, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, n_submit=n_submit, n_submit_timestamp=n_submit_timestamp, name=name, persisted_props=persisted_props, persistence=persistence, persistence_type=persistence_type, placeholder=placeholder, readOnly=readOnly, required=required, rows=rows, spellCheck=spellCheck, style=style, tabIndex=tabIndex, title=title, valid=valid, value=value, wrap=wrap)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Textarea',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'accessKey', 'autoFocus', 'bs_size', 'className', 'cols', 'contentEditable', 'contextMenu', 'debounce', 'dir', 'disabled', 'draggable', 'form', 'hidden', 'invalid', 'key', 'lang', 'loading_state', 'maxLength', 'minLength', 'n_blur', 'n_blur_timestamp', 'n_clicks', 'n_clicks_timestamp', 'n_submit', 'n_submit_timestamp', 'name', 'persisted_props', 'persistence', 'persistence_type', 'placeholder', 'readOnly', 'required', 'rows', 'spellCheck', 'style', 'tabIndex', 'title', 'valid', 'value', 'wrap'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
