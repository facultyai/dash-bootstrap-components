import React from 'react';
import PropTypes from 'prop-types';
import {Alert as RSAlert} from 'reactstrap';

const Alert = props => {
  const {children, is_open, ...otherProps} = props;
  return (
    <RSAlert isOpen={is_open} {...otherProps}>
      {children}
    </RSAlert>
  );
};

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
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Alert color, options: primary, secondary, success, info, warning, danger,
   * link. Default: secondary.
   */
  color: PropTypes.string,

  /**
   * Whether alert is open. Default: True.
   */
  is_open: PropTypes.bool,

  /**
   * If True, a fade animation will be applied when `is_open` is toggled. If
   * False the Alert will simply appear and disappear.
   */
  fade: PropTypes.bool
};

export default Alert;
