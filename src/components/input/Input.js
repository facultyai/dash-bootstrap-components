import React, {useEffect, useRef} from 'react';

import classNames from 'classnames';
import isNumeric from 'fast-isnumeric';
import PropTypes from 'prop-types';
import {isNil, omit} from 'ramda';

import {getLoadingState} from '../../private/util';

const convert = val => (isNumeric(val) ? +val : NaN);
const isEquivalent = (v1, v2) => v1 === v2 || (isNaN(v1) && isNaN(v2));

/**
 * A basic HTML input control for entering text, numbers, or passwords, with
 * Bootstrap styles automatically applied. This component is much like its
 * counterpart in dash_core_components, but with a few additions such as the
 * `valid` and `invalid` props for providing user feedback.
 *
 * Note that checkbox and radio types are supported through
 * the Checklist and RadioItems component. Dates, times, and file uploads
 * are supported through separate components in other libraries.
 */
function Input({
  value,
  n_submit = 0,
  n_blur = 0,
  size,
  valid,
  invalid,
  plaintext,
  class_name,
  type,
  step = 'any',
  debounce = false,
  html_size,
  autocomplete,
  autofocus,
  inputmode,
  maxlength,
  minlength,
  readonly,
  tabindex,
  className,
  autoComplete,
  autoFocus,
  inputMode,
  maxLength,
  minLength,
  tabIndex,
  setProps,
  ...otherProps
}) {
  const inputRef = useRef(null);
  const debounceRef = useRef(null);

  const formControlClass = plaintext
    ? 'form-control-plaintext'
    : 'form-control';

  const classes = classNames(
    class_name || className,
    invalid && 'is-invalid',
    valid && 'is-valid',
    size ? `form-control-${size}` : false,
    formControlClass
  );

  const onChange = () => {
    if (debounce) {
      if (Number.isFinite(debounce)) {
        clearTimeout(debounceRef.current);
        debounceRef.current = setTimeout(onEvent, debounce);
      }
    } else {
      onEvent();
    }
  };

  useEffect(() => {
    if (type === 'number') {
      const inputValue = inputRef.current.value;
      const inputValueAsNumber = inputRef.current.checkValidity()
        ? convert(inputValue)
        : NaN;
      const valueAsNumber = convert(value);

      if (!isEquivalent(valueAsNumber, inputValueAsNumber)) {
        inputRef.current.value = isNil(valueAsNumber) ? valueAsNumber : value;
      }
    } else {
      const inputValue = inputRef.current.value;

      if (value !== inputValue) {
        inputRef.current.value =
          value !== null && value !== undefined ? value : '';
      }
    }
  }, [value]);

  const onEvent = (payload = {}) => {
    if (type === 'number') {
      const inputValue = inputRef.current.value;
      const inputValueAsNumber = inputRef.current.checkValidity()
        ? convert(inputValue)
        : NaN;
      const valueAsNumber = convert(value);

      if (!isEquivalent(valueAsNumber, inputValueAsNumber)) {
        setProps({...payload, value: inputValueAsNumber});
      } else if (Object.keys(payload).length) {
        setProps(payload);
      }
    } else {
      payload.value = inputRef.current.value;
      setProps(payload);
    }
  };

  const onBlur = () => {
    if (setProps) {
      const payload = {n_blur: n_blur + 1};
      if (debounce === true) {
        // numeric debounce here has no effect, we only care about boolean debounce
        onEvent(payload);
      } else {
        setProps(payload);
      }
    }
  };

  const onKeyUp = e => {
    if (setProps && e.key === 'Enter') {
      const payload = {n_submit: n_submit + 1};
      if (debounce === true) {
        // numeric debounce here has no effect, we only care about boolean debounce
        onEvent(payload);
      } else {
        setProps(payload);
      }
    }
  };

  return (
    <input
      ref={inputRef}
      type={type}
      className={classes}
      onChange={onChange}
      onBlur={onBlur}
      onKeyUp={onKeyUp}
      {...omit(
        ['persistence', 'persistence_type', 'persisted_props'],
        otherProps
      )}
      data-dash-is-loading={getLoadingState() || undefined}
      autoComplete={autocomplete || autoComplete}
      autoFocus={autofocus || autoFocus}
      inputMode={inputmode || inputMode}
      maxLength={maxlength || maxLength}
      minLength={minlength || minLength}
      readOnly={readonly}
      tabIndex={tabindex || tabIndex}
      size={html_size}
      step={step}
    />
  );
}

Input.dashPersistence = {
  persisted_props: ['value'],
  persistence_type: 'local'
};

Input.propTypes = {
  /**
   * The ID of the Input
   */
  id: PropTypes.string,

  /**
   * The value of the Input
   */
  value: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Number of times the `Enter` key was pressed while the input had focus.
   */
  n_submit: PropTypes.number,

  /**
   * Number of times the input lost focus.
   */
  n_blur: PropTypes.number,

  /**
   * Set the size of the Input. Options: 'sm' (small), 'md' (medium)
   * or 'lg' (large). Default is 'md'.
   */
  size: PropTypes.string,

  /**
   * Apply valid style to the Input for feedback purposes. This will cause any
   * FormFeedback in the enclosing div with valid=True to display.
   */
  valid: PropTypes.bool,

  /**
   * Apply invalid style to the Input for feedback purposes. This will cause any
   * FormFeedback in the enclosing div with valid=False to display.
   */
  invalid: PropTypes.bool,

  /**
   * Set to true for an input styled as plain text with the default form field styling
   * removed and the correct margins and padding preserved. Typically you will want to
   * use this in conjunction with readonly=True.
   */
  plaintext: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Input.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Input
   */
  class_name: PropTypes.string,

  /**
   * The type of control to render
   */
  type: PropTypes.oneOf([
    // Only allowing the input types with wide browser compatibility
    'text',
    'number',
    'password',
    'email',
    'range',
    'search',
    'tel',
    'url',
    'hidden',
    'time'
  ]),

  /**
   * Works with the min and max attributes to limit the increments at which a numeric or
   * date-time value can be set. It can be the string any or a positive floating point
   * number. If this attribute is not set to any, the control accepts only values at
   * multiples of the step value greater than the minimum.
   */
  step: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Set to True to disable the Input.
   */
  disabled: PropTypes.bool,

  /**
   * A hint to the user of what can be entered in the control. The placeholder text must
   * not contain carriage returns or line-feeds. Note: Do not use the placeholder
   * attribute instead of a <label> element, their purposes are different. The <label>
   * attribute describes the role of the form element (i.e. it indicates what kind of
   * information is expected), and the placeholder attribute is a hint about the format
   * that the content should take. There are cases in which the placeholder attribute is
   * never displayed to the user, so the form must be understandable without it.
   */
  placeholder: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * If True, changes to the Input will be sent back to the Dash server only when the
   * enter key is pressed or when the component loses focus. If False, the Input will
   * trigger a callback on every change. If debounce is a number, the value will be sent
   * to the server only after the user has stopped typing for that number of
   * milliseconds.
   */
  debounce: PropTypes.oneOfType([PropTypes.bool, PropTypes.number]),

  /**
   * The initial size of the control. This value is in pixels unless the value of the
   * type attribute is text or password, in which case it is an integer number of
   * characters. This attribute applies only when the type attribute is set to text,
   * search, tel, url, email, or password, otherwise it is ignored. In addition, the
   * size must be greater than zero. If you do not specify a size, a default value of 20
   * is used.
   */
  html_size: PropTypes.string,

  /**
   * This attribute indicates whether the value of the control can be automatically
   * completed by the browser.
   */
  autocomplete: PropTypes.string,

  /**
   * The element should be automatically focused after the page loaded. autoFocus is an
   * HTML boolean attribute - it is enabled by a boolean or 'autoFocus'. Alternative
   * capitalizations `autofocus` & `AUTOFOCUS` are also acccepted.
   */
  autofocus: PropTypes.oneOfType([
    PropTypes.oneOf(['autoFocus', 'autofocus', 'AUTOFOCUS']),
    PropTypes.bool
  ]),

  /**
   * Provides a hint to the browser as to the type of data that might be entered by the
   * user while editing the element or its contents.
   */
  inputmode: PropTypes.oneOf([
    /**
     * Alphanumeric, non-prose content such as usernames and passwords.
     */
    'verbatim',

    /**
     * Latin-script input in the user's preferred language with typing aids such as text
     * prediction enabled. For human-to-computer communication such as search boxes.
     */
    'latin',

    /**
     * As latin, but for human names.
     */
    'latin-name',

    /**
     * As latin, but with more aggressive typing aids. For human-to-human communication
     * such as instant messaging or email.
     */
    'latin-prose',

    /**
     * As latin-prose, but for the user's secondary languages.
     */
    'full-width-latin',

    /**
     * Kana or romaji input, typically hiragana input, using full-width characters, with
     * support for converting to kanji. Intended for Japanese text input.
     */
    'kana',

    /**
     * Katakana input, using full-width characters, with support for converting to
     * kanji. Intended for Japanese text input.
     */
    'katakana',

    /**
     * Numeric input, including keys for the digits 0 to 9, the user's preferred
     * thousands separator character, and the character for indicating negative numbers.
     * Intended for numeric codes (e.g. credit card numbers). For actual numbers, prefer
     * using type="number"
     */
    'numeric',

    /**
     * Telephone input, including asterisk and pound key. Use type="tel" if possible
     * instead.
     */
    'tel',

    /**
     * Email input. Use type="email" if possible instead.
     */
    'email',

    /**
     * URL input. Use type="url" if possible instead.
     */
    'url'
  ]),

  /**
   * Identifies a list of pre-defined options to suggest to the user. The value must be
   * the id of a <datalist> element in the same document. The browser displays only
   * options that are valid values for this input element. This attribute is ignored
   * when the type attribute's value is hidden, checkbox, radio, file, or a button type.
   */
  list: PropTypes.string,

  /**
   * The maximum (numeric or date-time) value for this item, which must not be less than
   * its minimum (min attribute) value.
   */
  max: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * If the value of the type attribute is text, email, search, password, tel, or url,
   * this attribute specifies the maximum number of characters (in UTF-16 code units)
   * that the user can enter. For other control types, it is ignored. It can exceed the
   * value of the size attribute. If it is not specified, the user can enter an
   * unlimited number of characters. Specifying a negative number results in the default
   * behavior (i.e. the user can enter an unlimited number of characters). The
   * constraint is evaluated only when the value of the attribute has been changed.
   */
  maxlength: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * The minimum (numeric or date-time) value for this item, which must not be greater
   * than its maximum (max attribute) value.
   */
  min: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * If the value of the type attribute is text, email, search, password, tel, or url,
   * this attribute specifies the minimum number of characters (in Unicode code points)
   * that the user can enter. For other control types, it is ignored.
   */
  minlength: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * This attribute specifies that the user must fill in a value before submitting a
   * form. It cannot be used when the type attribute is hidden, image, or a button type
   * (submit, reset, or button). The :optional and :required CSS pseudo-classes will be
   * applied to the field as appropriate. required is an HTML boolean attribute - it is
   * enabled by a boolean or 'required'. Alternative capitalizations `REQUIRED` are also
   * acccepted.
   */
  required: PropTypes.oneOfType([
    PropTypes.oneOf(['required', 'REQUIRED']),
    PropTypes.bool
  ]),

  /**
   * Indicates whether the element can be edited.
   */
  readonly: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.oneOf(['readOnly', 'readonly', 'READONLY'])
  ]),

  /**
   * The name of the control, which is submitted with the form data.
   */
  name: PropTypes.string,

  /**
   * A regular expression that the control's value is checked against. The pattern must
   * match the entire value, not just some subset. Use the title attribute to describe
   * the pattern to help the user. This attribute applies when the value of the type
   * attribute is text, search, tel, url, email, or password, otherwise it is ignored.
   * The regular expression language is the same as JavaScript RegExp algorithm, with
   * the 'u' parameter that makes it treat the pattern as a sequence of unicode code
   * points. The pattern is not surrounded by forward slashes.
   */
  pattern: PropTypes.string,

  /**
   * Overrides the browser's default tab order and follows the one specified instead.
   */
  tabindex: PropTypes.string,

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
   * Additional CSS classes to apply to the Input
   */
  className: PropTypes.string,

  /**
   * **DEPRECATED** Use `tabindex` instead.
   *
   * Overrides the browser's default tab order and follows the one specified instead.
   */
  tabIndex: PropTypes.string,

  /**
   * **DEPRECATED** Use `maxlength` instead.
   *
   * If the value of the type attribute is text, email, search, password, tel, or url,
   * this attribute specifies the maximum number of characters (in UTF-16 code units)
   * that the user can enter. For other control types, it is ignored. It can exceed the
   * value of the size attribute. If it is not specified, the user can enter an
   * unlimited number of characters. Specifying a negative number results in the default
   * behavior (i.e. the user can enter an unlimited number of characters). The
   * constraint is evaluated only when the value of the attribute has been changed.
   */
  maxLength: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * **DEPRECATED** Use `minlength` instead.
   *
   * If the value of the type attribute is text, email, search, password, tel, or url,
   * this attribute specifies the minimum number of characters (in Unicode code points)
   * that the user can enter. For other control types, it is ignored.
   */
  minLength: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * **DEPRECATED** Use `inputmode` instead.
   *
   * Provides a hint to the browser as to the type of data that might be entered by the
   * user while editing the element or its contents.
   */
  inputMode: PropTypes.oneOf([
    /**
     * Alphanumeric, non-prose content such as usernames and passwords.
     */
    'verbatim',

    /**
     * Latin-script input in the user's preferred language with typing aids such as text
     * prediction enabled. For human-to-computer communication such as search boxes.
     */
    'latin',

    /**
     * As latin, but for human names.
     */
    'latin-name',

    /**
     * As latin, but with more aggressive typing aids. For human-to-human communication
     * such as instant messaging or email.
     */
    'latin-prose',

    /**
     * As latin-prose, but for the user's secondary languages.
     */
    'full-width-latin',

    /**
     * Kana or romaji input, typically hiragana input, using full-width characters, with
     * support for converting to kanji. Intended for Japanese text input.
     */
    'kana',

    /**
     * Katakana input, using full-width characters, with support for converting to
     * kanji. Intended for Japanese text input.
     */
    'katakana',

    /**
     * Numeric input, including keys for the digits 0 to 9, the user's preferred
     * thousands separator character, and the character for indicating negative numbers.
     * Intended for numeric codes (e.g. credit card numbers). For actual numbers, prefer
     * using type="number"
     */
    'numeric',

    /**
     * Telephone input, including asterisk and pound key. Use type="tel" if possible
     * instead.
     */
    'tel',

    /**
     * Email input. Use type="email" if possible instead.
     */
    'email',

    /**
     * URL input. Use type="url" if possible instead.
     */
    'url'
  ]),

  /**
   * **DEPRECATED** Use `autocomplete` instead.
   *
   * This attribute indicates whether the value of the control can be automatically
   * completed by the browser.
   */
  autoComplete: PropTypes.string,

  /**
   * **DEPRECATED** Use `autofocus` instead.
   *
   * The element should be automatically focused after the page loaded. autoFocus is an
   * HTML boolean attribute - it is enabled by a boolean or 'autoFocus'. Alternative
   * capitalizations `autofocus` & `AUTOFOCUS` are also acccepted.
   */
  autoFocus: PropTypes.oneOfType([
    PropTypes.oneOf(['autoFocus', 'autofocus', 'AUTOFOCUS']),
    PropTypes.bool
  ]),

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Input;
