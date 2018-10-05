import PropTypes from 'prop-types';
import {Input as RSInput} from 'reactstrap';

const Input = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSInput {...otherProps}>
    {children}
  </RSInput>);
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
  type: PropTypes.string,
  size: PropTypes.string,
  bsSize: PropTypes.string,
  valid: PropTypes.bool,
  invalid: PropTypes.bool,
  plaintext: PropTypes.bool,
  addon: PropTypes.bool
}

export default Input;
