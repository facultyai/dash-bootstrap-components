import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import classNames from 'classnames';

class Input extends React.Component {
  constructor(props) {
    super(props);
    this.state = {value: props.value};
  }

  componentWillReceiveProps(nextProps) {
    this.setState({value: nextProps.value});
  }

  render() {
    const {
      setProps,
      type,
      className,
      valid,
      invalid,
      bs_size,
      plaintext
    } = this.props;
    const {value} = this.state;

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
        onChange={e => {
          this.setState({value: e.target.value});
          if (setProps) {
            if (type === 'number') {
              setProps({value: Number(e.target.value)});
            } else {
              setProps({value: e.target.value});
            }
          }
        }}
        className={classes}
        value={value}
        {...omit(
          [
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
   *
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

  value: PropTypes.string,
  size: PropTypes.string,
  bs_size: PropTypes.string,
  valid: PropTypes.bool,
  invalid: PropTypes.bool,
  plaintext: PropTypes.bool,
  addon: PropTypes.bool,
  placeholder: PropTypes.string,
  name: PropTypes.string
};

export default Input;
