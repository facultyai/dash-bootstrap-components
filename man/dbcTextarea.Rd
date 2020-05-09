% Auto-generated: do not edit by hand
\name{dbcTextarea}

\alias{dbcTextarea}

\title{Textarea component}

\description{
A basic HTML textarea for entering multiline text based on the corresponding component in dash-core-components
}

\usage{
dbcTextarea(id=NULL, key=NULL, value=NULL, autoFocus=NULL, cols=NULL,
disabled=NULL, form=NULL, maxLength=NULL, minLength=NULL,
name=NULL, placeholder=NULL, readOnly=NULL, required=NULL,
rows=NULL, wrap=NULL, accessKey=NULL, className=NULL,
contentEditable=NULL, contextMenu=NULL, dir=NULL,
draggable=NULL, hidden=NULL, lang=NULL, spellCheck=NULL,
style=NULL, tabIndex=NULL, title=NULL, bs_size=NULL,
valid=NULL, invalid=NULL, n_blur=NULL,
n_blur_timestamp=NULL, n_submit=NULL,
n_submit_timestamp=NULL, n_clicks=NULL,
n_clicks_timestamp=NULL, debounce=NULL, loading_state=NULL,
persistence=NULL, persisted_props=NULL,
persistence_type=NULL)
}

\arguments{
\item{id}{Character. The ID of this component, used to identify dash components
in callbacks. The ID needs to be unique across all of the
components in an app.}

\item{key}{Character. A unique identifier for the component, used to improve
performance by React.js while rendering components
See https://reactjs.org/docs/lists-and-keys.html for more info}

\item{value}{Character. The value of the textarea}

\item{autoFocus}{Character. The element should be automatically focused after the page loaded.}

\item{cols}{Character | numeric. Defines the number of columns in a textarea.}

\item{disabled}{Character | logical. Indicates whether the user can interact with the element.}

\item{form}{Character. Indicates the form that is the owner of the element.}

\item{maxLength}{Character | numeric. Defines the maximum number of characters allowed in the element.}

\item{minLength}{Character | numeric. Defines the minimum number of characters allowed in the element.}

\item{name}{Character. Name of the element. For example used by the server to identify the fields in form submits.}

\item{placeholder}{Character. Provides a hint to the user of what can be entered in the field.}

\item{readOnly}{Logical | a value equal to: 'readonly', 'readonly', 'readonly'. Indicates whether the element can be edited.}

\item{required}{A value equal to: 'required', 'required' | logical. Indicates whether this element is required to fill out or not.}

\item{rows}{Character | numeric. Defines the number of rows in a text area.}

\item{wrap}{Character. Indicates whether the text should be wrapped.}

\item{accessKey}{Character. Defines a keyboard shortcut to activate or add focus to the element.}

\item{className}{Character. Often used with CSS to style elements with common properties.}

\item{contentEditable}{Character | numeric. Indicates whether the element's content is editable.}

\item{contextMenu}{Character. Defines the ID of a <menu> element which will serve as the element's context menu.}

\item{dir}{Character. Defines the text direction. Allowed values are ltr (Left-To-Right) or rtl (Right-To-Left)}

\item{draggable}{A value equal to: 'true', 'false' | logical. Defines whether the element can be dragged.}

\item{hidden}{Character. Prevents rendering of given element, while keeping child elements, e.g. script elements, active.}

\item{lang}{Character. Defines the language used in the element.}

\item{spellCheck}{A value equal to: 'true', 'false' | logical. Indicates whether spell checking is allowed for the element.}

\item{style}{Named list. Defines CSS styles which will override styles previously set.}

\item{tabIndex}{Character | numeric. Overrides the browser's default tab order and follows the one specified instead.}

\item{title}{Character. Text to be displayed in a tooltip when hovering over the element.}

\item{bs_size}{Character. Set the size of the Textarea, valid options are 'sm', 'md', or 'lg'}

\item{valid}{Logical. Apply valid style to the Textarea for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=True to display.}

\item{invalid}{Logical. Apply invalid style to the Textarea for feedback purposes. This will cause
any FormFeedback in the enclosing FormGroup with valid=False to display.}

\item{n_blur}{Numeric. Number of times the input lost focus.}

\item{n_blur_timestamp}{Numeric. Last time the input lost focus.}

\item{n_submit}{Numeric. Number of times the `Enter` key was pressed while the textarea had focus.}

\item{n_submit_timestamp}{Numeric. Last time that `Enter` was pressed.}

\item{n_clicks}{Numeric. An integer that represents the number of times
that this element has been clicked on.}

\item{n_clicks_timestamp}{Numeric. An integer that represents the time (in ms since 1970)
at which n_clicks changed. This can be used to tell
which button was changed most recently.}

\item{debounce}{Logical. If true, changes to input will be sent back to the Dash server only on enter or when losing focus.
If it's false, it will sent the value back on every change.}

\item{loading_state}{Lists containing elements 'is_loading', 'prop_name', 'component_name'.
those elements have the following types:
  - is_loading (logical; optional): determines if the component is loading or not
  - prop_name (character; optional): holds which property is loading
  - component_name (character; optional): holds the name of the component that is loading. Object that holds the loading state object coming from dash-renderer}

\item{persistence}{Logical | character | numeric. Used to allow user interactions in this component to be persisted when
the component - or the page - is refreshed. If `persisted` is truthy and
hasn't changed from its previous value, a `value` that the user has
changed while using the app will keep that change, as long as
the new `value` also matches what was given originally.
Used in conjunction with `persistence_type`.}

\item{persisted_props}{List of a value equal to: 'value's. Properties whose user interactions will persist after refreshing the
component or the page. Since only `value` is allowed this prop can
normally be ignored.}

\item{persistence_type}{A value equal to: 'local', 'session', 'memory'. Where persisted user changes will be stored:
memory: only kept in memory, reset on page refresh.
local: window.localStorage, data is kept after the browser quit.
session: window.sessionStorage, data is cleared once the browser quit.}
}

\value{named list of JSON elements corresponding to React.js properties and their values}

