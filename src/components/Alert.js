import PropTypes from 'prop-types';
import {Alert as RSAlert} from 'reactstrap';

const Alert = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSAlert {...otherProps}>
    {children}
  </RSAlert>);
}

Alert.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component.
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
   * Alert color, options: primary, secondary, success, info, warning, danger,
   * link. Default: secondary.
   */
  color: PropTypes.string,

  /**
   * Whether alert is open. Default: True.
   */
  isOpen: PropTypes.bool,

  /**
   * Fade on close.
   */
  fade: PropTypes.bool
}

export default Alert;
