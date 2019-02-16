import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';


class RadioButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = {checked: props.checked};
  }

  componentWillReceiveProps(newProps) {
    this.setState({checked: newProps.checked});
  }

  render() {
    const {checked} = this.state;

    return (
      <input
        type="radio"
        checked={checked}
        {...omit(['checked', 'setProps'], this.props)}
        onClick={() => {
          if (this.props.setProps) {
            this.props.setProps({
              checked: !checked
            });
          } else {
            this.setState({checked: !checked});
          }
        }}
      />
    );
  }
}

RadioButton.propTypes = {
  id: PropTypes.string,

  /**
   * Whether RadioButton has been checked or not
   */
  checked: PropTypes.bool,

  /**
   * The class of the container (div)
   */
  className: PropTypes.string,

  /**
   * The style of the container (div)
   */
  style: PropTypes.object,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default RadioButton;
