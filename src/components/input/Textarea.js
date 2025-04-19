import React, {useEffect, useRef, useState} from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';
import {omit} from 'ramda';

import {getLoadingState} from '../../private/util';

/**
 * A basic HTML textarea for entering multiline text based on the corresponding
 * component in dash-core-components
 */
function Textarea({
  value = '',
  n_blur = 0,
  n_submit = 0,
  n_clicks = 0,
  class_name,
  invalid,
  valid,
  size,
  debounce = false,
  submit_on_enter = true,
  autofocus,
  maxlength,
  minlength,
  readonly,
  accesskey,
  contenteditable,
  contextmenu,
  spellcheck,
  tabindex,
  className,
  accessKey,
  autoFocus,
  contentEditable,
  contextMenu,
  maxLength,
  minLength,
  readOnly,
  spellCheck,
  tabIndex,
  setProps,
  ...otherProps
}) {
  const [valueState, setValueState] = useState(value || '');
  const debounceRef = useRef(null);

  useEffect(() => {
    if (value !== valueState) {
      setValueState(value || '');
    }
  }, [value]);

  const onChange = e => {
    const newValue = e.target.value;
    setValueState(newValue);
    if (debounce) {
      if (Number.isFinite(debounce)) {
        clearTimeout(debounceRef.current);
        debounceRef.current = setTimeout(
          () => setProps({value: newValue}),
          debounce
        );
      }
    } else {
      setProps({value: newValue});
    }
  };

  const onBlur = e => {
    if (setProps) {
      const payload = {n_blur: n_blur + 1};
      if (debounce === true) {
        payload.value = e.target.value;
      }
      setProps(payload);
    }
  };

  const onKeyUp = e => {
    if (submit_on_enter && setProps && e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault(); // don't create newline if submitting
      const payload = {n_submit: n_submit + 1};
      if (debounce === true) {
        payload.value = e.target.value;
      }
      setProps(payload);
    }
  };

  const onClick = () => {
    if (setProps) {
      setProps({n_clicks: n_clicks + 1});
    }
  };

  const classes = classNames(
    class_name || className,
    invalid && 'is-invalid',
    valid && 'is-valid',
    size ? `form-control-${size}` : false,
    'form-control'
  );

  return (
    <textarea
      value={valueState}
      className={classes}
      onChange={onChange}
      onBlur={onBlur}
      onKeyUp={onKeyUp}
      onClick={onClick}
      autoFocus={autofocus || autoFocus}
      maxLength={maxlength || maxLength}
      minLength={minlength || minLength}
      readOnly={readonly || readOnly}
      accessKey={accesskey || accessKey}
      contentEditable={contenteditable || contentEditable}
      contextMenu={contextmenu || contextMenu}
      spellCheck={spellcheck || spellCheck}
      tabIndex={tabindex || tabIndex}
      {...omit(
        ['persistence', 'persistence_type', 'persisted_props'],
        otherProps
      )}
      data-dash-is-loading={getLoadingState() || undefined}
    />
  );
}

Textarea.dashPersistence = {
  persisted_props: ['value'],
  persistence_type: 'local'
};

Textarea.propTypes = {
  /**
   * The ID of the Textarea
   */
  id: PropTypes.string,

  /**
   * The value of the textarea
   */
  value: PropTypes.string,

  /**
   * Number of times the input lost focus.
   */
  n_blur: PropTypes.number,

  /**
   * Number of times the `Enter` key was pressed while the textarea had focus. Only
   * updates if submit_on_enter is True.
   */
  n_submit: PropTypes.number,

  /**
   * The number of times the TextArea has been clicked.
   */
  n_clicks: PropTypes.number,

  /**
   * Apply valid style to the Textarea for feedback purposes. This will cause
   * any FormFeedback in the enclosing div with valid=True to display.
   */
  valid: PropTypes.bool,

  /**
   * Apply invalid style to the Textarea for feedback purposes. This will cause
   * any FormFeedback in the enclosing div with valid=False to display.
   */
  invalid: PropTypes.bool,

  /**
   * Provides a hint to the user of what can be entered in the field.
   */
  placeholder: PropTypes.string,

  /**
   * Set the size of the Textarea, valid options are 'sm', 'md', or 'lg'
   */
  size: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the Textarea.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Textarea
   */
  class_name: PropTypes.string,

  /**
   * Defines a keyboard shortcut to activate or add focus to the element.
   */
  accesskey: PropTypes.string,

  /**
   * The element should be automatically focused after the page loaded.
   */
  autofocus: PropTypes.string,

  /**
   * Indicates whether the element's content is editable.
   */
  contenteditable: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Defines the ID of a <menu> element which will serve as the element's context menu.
   */
  contextmenu: PropTypes.string,

  /**
   * Defines the number of columns in a textarea.
   */
  cols: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Defines the text direction. Allowed values are ltr (Left-To-Right) or rtl (Right-To-Left)
   */
  dir: PropTypes.string,

  /**
   * Indicates whether the user can interact with the element.
   */
  disabled: PropTypes.oneOfType([PropTypes.string, PropTypes.bool]),

  /**
   * Defines whether the element can be dragged.
   */
  draggable: PropTypes.oneOfType([
    // enumerated property, not a boolean property: https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/draggable
    PropTypes.oneOf(['true', 'false']),
    PropTypes.bool
  ]),

  /**
   * Indicates the form that is the owner of the element.
   */
  form: PropTypes.string,

  /**
   * Prevents rendering of given element, while keeping child elements, e.g. script elements, active.
   */
  hidden: PropTypes.string,

  /**
   * Defines the language used in the element.
   */
  lang: PropTypes.string,

  /**
   * Defines the maximum number of characters allowed in the element.
   */
  maxlength: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Defines the minimum number of characters allowed in the element.
   */
  minlength: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Name of the element. For example used by the server to identify the fields in form submits.
   */
  name: PropTypes.string,

  /**
   * Indicates whether the element can be edited.
   */
  readonly: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.oneOf(['readOnly', 'readonly', 'READONLY'])
  ]),

  /**
   * This attribute specifies that the user must fill in a value before
   * submitting a form. It cannot be used when the type attribute is hidden,
   * image, or a button type (submit, reset, or button). The :optional and
   * :required CSS pseudo-classes will be applied to the field as appropriate.
   * required is an HTML boolean attribute - it is enabled by a boolean or
   * 'required'. Alternative capitalizations `REQUIRED`
   * are also acccepted.
   */
  required: PropTypes.oneOfType([
    PropTypes.oneOf(['required', 'REQUIRED']),
    PropTypes.bool
  ]),

  /**
   * Defines the number of rows in a text area.
   */
  rows: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Indicates whether spell checking is allowed for the element.
   */
  spellcheck: PropTypes.oneOfType([
    // enumerated property, not a boolean property: https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/draggable
    PropTypes.oneOf(['true', 'false']),
    PropTypes.bool
  ]),

  /**
   * Overrides the browser's default tab order and follows the one specified instead.
   */
  tabindex: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Text to be displayed in a tooltip when hovering over the element.
   */
  title: PropTypes.string,

  /**
   * Indicates whether the text should be wrapped.
   */
  wrap: PropTypes.string,

  /**
   * Whether or not the form should increment the n_submit prop when enter key is
   * pressed. If True, use shift + enter to create a newline. Default: True
   */
  submit_on_enter: PropTypes.bool,

  /**
   * If true, changes to input will be sent back to the Dash server only on enter or
   * when losing focus. If it's false, it will sent the value back on every change.
   * If debounce is a number, the value will be sent to the server only after the user
   * has stopped typing for that number of milliseconds
   */
  debounce: PropTypes.oneOfType([PropTypes.bool, PropTypes.number]),

  /**
   * Used to allow user interactions to be persisted when the page is refreshed.
   * See https://dash.plotly.com/persistence for more details
   */
  persistence: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.string,
    PropTypes.number
  ]),

  /**
   * Properties whose user interactions will persist after refreshing the
   * component or the page. Since only `value` is allowed this prop can
   * normally be ignored.
   */
  persisted_props: PropTypes.arrayOf(PropTypes.oneOf(['value'])),

  /**
   * Where persisted user changes will be stored:
   * - memory: only kept in memory, reset on page refresh.
   * - local: window.localStorage, data is kept after the browser quit.
   * - session: window.sessionStorage, data is cleared once the browser quit.
   */
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory']),

  /**
   * A unique identifier for the component, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the Textarea
   */
  className: PropTypes.string,

  /**
   * **DEPRECATED** Use `accesskey` instead.
   *
   * Defines a keyboard shortcut to activate or add focus to the element.
   */
  accessKey: PropTypes.string,

  /**
   * **DEPRECATED** Use `autofocus` instead.
   *
   * The element should be automatically focused after the page loaded.
   */
  autoFocus: PropTypes.string,

  /**
   * **DEPRECATED** Use `contenteditable` instead.
   *
   * Indicates whether the element's content is editable.
   */
  contentEditable: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * **DEPRECATED** Use `contextmenu` instead.
   *
   * Defines the ID of a <menu> element which will serve as the element's context menu.
   */
  contextMenu: PropTypes.string,

  /**
   * **DEPRECATED** Use `maxlength` instead.
   *
   * Defines the maximum number of characters allowed in the element.
   */
  maxLength: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * **DEPRECATED** Use `minlength` instead.
   *
   * Defines the minimum number of characters allowed in the element.
   */
  minLength: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * **DEPRECATED** Use `readonly` instead.
   *
   * Indicates whether the element can be edited.
   */
  readOnly: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.oneOf(['readOnly', 'readonly', 'READONLY'])
  ]),

  /**
   * **DEPRECATED** Use `spellcheck` instead.
   *
   * Indicates whether spell checking is allowed for the element.
   */
  spellCheck: PropTypes.oneOfType([
    // enumerated property, not a boolean property: https://developer.mozilla.org/en-US/docs/Web/HTML/Global_attributes/draggable
    PropTypes.oneOf(['true', 'false']),
    PropTypes.bool
  ]),

  /**
   * **DEPRECATED** Use `tabindex` instead.
   *
   * Overrides the browser's default tab order and follows the one specified instead.
   */
  tabIndex: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Textarea;
