import React from 'react';
import PropTypes from 'prop-types';
import {omit, isEmpty} from 'ramda';
import classNames from 'classnames';

class Input extends React.Component {
  constructor(props) {
    super(props);
    if (!props.setProps || props.debounce) {
      this.state = {value: props.value};
    }
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.setProps) {
      this.props = nextProps;
      if (this.props.debounce) {
        this.setState({value: nextProps.value});
      }
    }
  }

  render() {
    const {
      setProps,
      type,
      className,
      valid,
      invalid,
      bs_size,
      plaintext,
      key,
      debounce,
      min,
      max
    } = this.props;
    const {value} = setProps
      ? debounce
        ? this.state
        : this.props
      : this.state;

    let formControlClass = 'form-control';

    if (plaintext) {
      formControlClass = `${formControlClass}-plaintext`;
    }

    const classes = classNames(
      className,
      invalid && 'is-invalid',
      valid && 'is-valid',
      bs_size ? `form-control-${bs_size}` : false,
      formControlClass,
      debounce
    );
    return (
      <input
        onChange={e => {
          const newValue = e.target.value;
          if (
            (!isEmpty(min) && Number(newValue) < min) ||
            (!isEmpty(max) && Number(newValue) > max)
          ) {
            return;
          }
          if (!debounce && setProps) {
            const castValue = type === 'number' ? Number(newValue) : newValue;
            setProps({
              value: castValue
            });
          } else {
            this.setState({value: newValue});
          }
        }}
        onBlur={() => {
          if (setProps) {
            const payload = {
              n_blur: this.props.n_blur + 1,
              n_blur_timestamp: new Date()
            };
            if (debounce) {
              payload.value = type === 'number' ? Number(value) : value;
            }
            setProps(payload);
          }
        }}
        onKeyPress={e => {
          if (setProps && e.key === 'Enter') {
            const payload = {
              n_submit: this.props.n_submit + 1,
              n_submit_timestamp: new Date()
            };
            if (debounce) {
              payload.value = type === 'number' ? Number(value) : value;
            }
            setProps(payload);
          }
        }}
        className={classes}
        value={value}
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
            'plaintext'
          ],
          this.props
        )}
      />
    );
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
  value: PropTypes.string,

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
   * If true, changes to input will be sent back to the Dash server only on enter or when losing focus.
   * If it's false, it will sent the value back on every change.
   */
  debounce: PropTypes.bool
};

Input.defaultProps = {
  n_blur: 0,
  n_blur_timestamp: -1,
  n_submit: 0,
  n_submit_timestamp: -1,
  debounce: false
};

export default Input;
