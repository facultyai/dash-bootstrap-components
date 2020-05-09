# AUTO GENERATED FILE - DO NOT EDIT

dbcTextarea <- function(id=NULL, key=NULL, value=NULL, autoFocus=NULL, cols=NULL, disabled=NULL, form=NULL, maxLength=NULL, minLength=NULL, name=NULL, placeholder=NULL, readOnly=NULL, required=NULL, rows=NULL, wrap=NULL, accessKey=NULL, className=NULL, contentEditable=NULL, contextMenu=NULL, dir=NULL, draggable=NULL, hidden=NULL, lang=NULL, spellCheck=NULL, style=NULL, tabIndex=NULL, title=NULL, bs_size=NULL, valid=NULL, invalid=NULL, n_blur=NULL, n_blur_timestamp=NULL, n_submit=NULL, n_submit_timestamp=NULL, n_clicks=NULL, n_clicks_timestamp=NULL, debounce=NULL, loading_state=NULL, persistence=NULL, persisted_props=NULL, persistence_type=NULL) {
    
    props <- list(id=id, key=key, value=value, autoFocus=autoFocus, cols=cols, disabled=disabled, form=form, maxLength=maxLength, minLength=minLength, name=name, placeholder=placeholder, readOnly=readOnly, required=required, rows=rows, wrap=wrap, accessKey=accessKey, className=className, contentEditable=contentEditable, contextMenu=contextMenu, dir=dir, draggable=draggable, hidden=hidden, lang=lang, spellCheck=spellCheck, style=style, tabIndex=tabIndex, title=title, bs_size=bs_size, valid=valid, invalid=invalid, n_blur=n_blur, n_blur_timestamp=n_blur_timestamp, n_submit=n_submit, n_submit_timestamp=n_submit_timestamp, n_clicks=n_clicks, n_clicks_timestamp=n_clicks_timestamp, debounce=debounce, loading_state=loading_state, persistence=persistence, persisted_props=persisted_props, persistence_type=persistence_type)
    if (length(props) > 0) {
        props <- props[!vapply(props, is.null, logical(1))]
    }
    component <- list(
        props = props,
        type = 'Textarea',
        namespace = 'dash_bootstrap_components',
        propNames = c('id', 'key', 'value', 'autoFocus', 'cols', 'disabled', 'form', 'maxLength', 'minLength', 'name', 'placeholder', 'readOnly', 'required', 'rows', 'wrap', 'accessKey', 'className', 'contentEditable', 'contextMenu', 'dir', 'draggable', 'hidden', 'lang', 'spellCheck', 'style', 'tabIndex', 'title', 'bs_size', 'valid', 'invalid', 'n_blur', 'n_blur_timestamp', 'n_submit', 'n_submit_timestamp', 'n_clicks', 'n_clicks_timestamp', 'debounce', 'loading_state', 'persistence', 'persisted_props', 'persistence_type'),
        package = 'dashBootstrapComponents'
        )

    structure(component, class = c('dash_component', 'list'))
}
