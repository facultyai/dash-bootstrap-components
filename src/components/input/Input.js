import React from 'react';
import PropTypes from 'prop-types';
import {omit, isEmpty} from 'ramda';
import isNumeric from 'fast-isnumeric';
import classNames from 'classnames';

const convert = val => (isNumeric(val) ? +val : NaN);

class Input extends React.Component {
  constructor(props) {
    super(props);

    this.onBlur = this.onBlur.bind(this);
    this.onChange = this.onChange.bind(this);
    this.onKeyPress = this.onKeyPress.bind(this);
    this.parseValue = this.parseValue.bind(this);

    this.state = {value: props.value};
  }

  parseValue(value) {
    if (this.props.type === 'number') {
      if (
        (!isEmpty(this.props.min) &&
          convert(value) &&
          convert(value) < this.props.min) ||
        (!isEmpty(this.props.max) &&
          convert(value) &&
          convert(value) > this.props.max)
      ) {
        return;
      }
      return convert(value) || null;
    } else return value;
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.value != this.state.value) {
      this.setState({value: nextProps.value});
    }
  }

  render() {
    const {
      className,
      valid,
      invalid,
      bs_size,
      plaintext,
      debounce,
      loading_state
    } = this.props;

    let formControlClass = 'form-control';

    if (plaintext) {
      formControlClass = `${formControlClass}-plaintext`;
    }

    const classes = classNames(
      className,
      invalid && 'is-invalid',
      valid && 'is-valid',
      bs_size ? `form-control-${bs_size}` : false,
      formControlClass
    );
    return (
      <input
        onChange={this.onChange}
        onBlur={this.onBlur}
        onKeyPress={this.onKeyPress}
        className={classes}
        value={this.state.value}
        {...omit(
          [
            'debounce',
            'n_blur',
            'n_blur_timestamp',
            'n_submit',
            'n_submit_timestamp',
            'selectionDirection',
            'selectionEnd',
            'selectionStart',
            'setProps',
            'value',
            'className',
            'valid',
            'invalid',
            'bs_size',
            'plaintext',
            'loading_state',
            'persistence',
            'persistence_type',
            'persisted_props'
          ],
          this.props
        )}
        data-dash-is-loading={
          (loading_state && loading_state.is_loading) || undefined
        }
      />
    );
  }

  onChange(e) {
    const {debounce, setProps} = this.props;
    const newValue = e.target.value;
    const castValue = this.parseValue(newValue);
    if (!debounce && setProps) {
      setProps({value: castValue});
    } else {
      this.setState({value: castValue});
    }
  }

  onKeyPress(e) {
    const {setProps, debounce} = this.props;
    if (setProps && e.key === 'Enter') {
      const payload = {
        n_submit: this.props.n_submit + 1,
        n_submit_timestamp: Date.now()
      };
      if (debounce) {
        payload.value = this.state.value;
      }
      setProps(payload);
    }
  }

  onBlur() {
    const {setProps, debounce} = this.props;
    if (setProps) {
      const payload = {
        n_blur: this.props.n_blur + 1,
        n_blur_timestamp: Date.now()
      };
      if (debounce) {
        payload.value = this.state.value;
      }
      setProps(payload);
    }
  }
}

Input.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * The type of control to render
   */
  type: PropTypes.oneOf([
    // Only allowing the input types with wide browser compatability
    'text',
    'number',
    'password',
    'email',
    'range',
    'search',
    'tel',
    'url',
    'hidden'
  ]),

  /**
   * The value of the Input
   */
  value: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * Set to True to disable the Input.
   */
  disabled: PropTypes.bool,

  /**
   * This attribute indicates whether the value of the control can be
   * automatically completed by the browser.
   */
  autoComplete: PropTypes.string,

  /**
   * The element should be automatically focused after the page has loaded.
   */
  autoFocus: PropTypes.string,

  inputMode: PropTypes.oneOf([
    /**
     * Alphanumeric, non-prose content such as usernames and passwords.
     */
    'verbatim',

    /**
     * Latin-script input in the user's preferred language with typing aids
     * such as text prediction enabled. For human-to-computer communication
     * such as search boxes.
     */
    'latin',

    /**
     * As latin, but for human names.
     */
    'latin-name',

    /**
     * As latin, but with more aggressive typing aids. For human-to-human
     * communication such as instant messaging or email.
     */
    'latin-prose',

    /**
     * As latin-prose, but for the user's secondary languages.
     */
    'full-width-latin',

    /**
     * Kana or romaji input, typically hiragana input, using full-width
     * characters, with support for converting to kanji. Intended for Japanese text input.
     */
    'kana',

    /**
     * Katakana input, using full-width characters, with support for converting
     * to kanji. Intended for Japanese text input.
     */
    'katakana',

    /**
     * Numeric input, including keys for the digits 0 to 9, the user's preferred
     * thousands separator character, and the character for indicating negative
     * numbers. Intended for numeric codes (e.g. credit card numbers). For
     * actual numbers, prefer using type="number"
     */
    'numeric',

    /**
     * Telephone input, including asterisk and pound key. Use type="tel" if
     * possible instead.
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
   * Identifies a list of pre-defined options to suggest to the user.
   * The value must be the id of a <datalist> element in the same document.
   * The browser displays only options that are valid values for this
   * input element.
   * This attribute is ignored when the type attribute's value is
   * hidden, checkbox, radio, file, or a button type.
   */
  list: PropTypes.string,

  /**
   * The maximum (numeric or date-time) value for this item, which must not be
   * less than its minimum (min attribute) value.
   */
  max: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * If the value of the type attribute is text, email, search, password, tel,
   * or url, this attribute specifies the maximum number of characters
   * (in UTF-16 code units) that the user can enter. For other control types,
   * it is ignored. It can exceed the value of the size attribute. If it is not
   * specified, the user can enter an unlimited number of characters.
   * Specifying a negative number results in the default behavior (i.e. the
   * user can enter an unlimited number of characters). The constraint is
   * evaluated only when the value of the attribute has been changed.
   */
  maxLength: PropTypes.string,

  /**
   * The minimum (numeric or date-time) value for this item, which must not be
   * greater than its maximum (max attribute) value.
   */
  min: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * If the value of the type attribute is text, email, search, password, tel,
   * or url, this attribute specifies the minimum number of characters (in
   * Unicode code points) that the user can enter. For other control types, it
   * is ignored.
   */
  minLength: PropTypes.string,

  /**
   * Works with the min and max attributes to limit the increments at which a
   * numeric or date-time value can be set. It can be the string any or a
   * positive floating point number. If this attribute is not set to any, the
   * control accepts only values at multiples of the step value greater than
   * the minimum.
   */
  step: PropTypes.oneOfType([PropTypes.string, PropTypes.number]),

  /**
   * The initial size of the control. This value is in pixels unless the value
   * of the type attribute is text or password, in which case it is an integer
   * number of characters. This attribute applies only when the type attribute
   * is set to text, search, tel, url, email, or password, otherwise it is
   * ignored. In addition, the size must be greater than zero. If you do not
   * specify a size, a default value of 20 is used.
   */
  size: PropTypes.string,

  /**
   * Set the size of the Input. Options: 'sm' (small), 'md' (medium)
   * or 'lg' (large). Default is 'md'.
   */
  bs_size: PropTypes.string,

  /**
   * Apply valid style to the Input for feedback purposes. This will cause
   * any FormFeedback in the enclosing FormGroup with valid=True to display.
   */
  valid: PropTypes.bool,

  /**
   * Apply invalid style to the Input for feedback purposes. This will cause
   * any FormFeedback in the enclosing FormGroup with valid=False to display.
   */
  invalid: PropTypes.bool,

  /**
   * Set to true for a readonly input styled as plain text with the default
   * form field styling removed and the correct margins and padding preserved.
   */
  plaintext: PropTypes.bool,

  /**
   * A hint to the user of what can be entered in the control . The placeholder
   * text must not contain carriage returns or line-feeds. Note: Do not use the
   * placeholder attribute instead of a <label> element, their purposes are
   * different. The <label> attribute describes the role of the form element
   * (i.e. it indicates what kind of information is expected), and the
   * placeholder attribute is a hint about the format that the content should
   * take. There are cases in which the placeholder attribute is never
   * displayed to the user, so the form must be understandable without it.
   */
  placeholder: PropTypes.string,

  /**
   * The name of the control, which is submitted with the form data.
   */
  name: PropTypes.string,

  /**
   * A regular expression that the control's value is checked against. The
   * pattern must match the entire value, not just some subset. Use the title
   * attribute to describe the pattern to help the user. This attribute applies
   * when the value of the type attribute is text, search, tel, url, email, or
   * password, otherwise it is ignored. The regular expression language is the
   * same as JavaScript RegExp algorithm, with the 'u' parameter that makes it
   * treat the pattern as a sequence of unicode code points. The pattern is not
   * surrounded by forward slashes.
   */
  pattern: PropTypes.string,

  /**
   * Number of times the `Enter` key was pressed while the input had focus.
   */
  n_submit: PropTypes.number,

  /**
   * Last time that `Enter` was pressed.
   */
  n_submit_timestamp: PropTypes.number,

  /**
   * Number of times the input lost focus.
   */
  n_blur: PropTypes.number,

  /**
   * Last time the input lost focus.
   */
  n_blur_timestamp: PropTypes.number,

  /**
   * If true, changes to input will be sent back to the Dash server
   * only when the enter key is pressed or when the component loses
   * focus.  If it's false, it will sent the value back on every
   * change.
   */
  debounce: PropTypes.bool,

  /**
   * Object that holds the loading state object coming from dash-renderer
   */
  loading_state: PropTypes.shape({
    /**
     * Determines if the component is loading or not
     */
    is_loading: PropTypes.bool,
    /**
     * Holds which property is loading
     */
    prop_name: PropTypes.string,
    /**
     * Holds the name of the component that is loading
     */
    component_name: PropTypes.string
  }),

  /**
   * Used to allow user interactions in this component to be persisted when
   * the component - or the page - is refreshed. If `persisted` is truthy and
   * hasn't changed from its previous value, a `value` that the user has
   * changed while using the app will keep that change, as long as
   * the new `value` also matches what was given originally.
   * Used in conjunction with `persistence_type`.
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
   * memory: only kept in memory, reset on page refresh.
   * local: window.localStorage, data is kept after the browser quit.
   * session: window.sessionStorage, data is cleared once the browser quit.
   */
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory'])
};

Input.defaultProps = {
  n_blur: 0,
  n_blur_timestamp: -1,
  n_submit: 0,
  n_submit_timestamp: -1,
  debounce: false,
  persisted_props: ['value'],
  persistence_type: 'local'
};

export default Input;
