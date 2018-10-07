import React from 'react';
import PropTypes from 'prop-types';
import {Input as RSInput} from 'reactstrap';

class Input extends React.Component {
  constructor(props) {
    super(props);
    this.state = {value: props.value};
  }

  componentWillReceiveProps(nextProps) {
    this.setState({value: nextProps.value});
  }

  render() {
    const {fireEvent, setProps, type, ...otherProps} = this.props;
    const {value} = this.state;
    return (
      <RSInput
        onChange={e => {
          this.setState({value: e.target.value});
          if (setProps) {
            if (type === 'number') {
              setProps({value: Number(e.target.value)});
            } else {
              setProps({value: e.target.value});
            }
          }
          if (fireEvent) {
            fireEvent({event: 'change'});
          }
        }}
        onBlur={() => {
          if (fireEvent) {
            fireEvent({event: 'blur'});
          }
        }}
        value={value}
        type={type}
        {...otherProps}
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
   * The children of this component
   */
  children: PropTypes.node,

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
    'textarea',
    'number',
    'password',
    'email',
    'range',
    'search',
    'tel',
    'url',
    'hidden',
  ]),

  value: PropTypes.string,
  size: PropTypes.string,
  bsSize: PropTypes.string,
  valid: PropTypes.bool,
  invalid: PropTypes.bool,
  plaintext: PropTypes.bool,
  addon: PropTypes.bool,
  placeholder: PropTypes.string,
  name: PropTypes.string
}

export default Input;
