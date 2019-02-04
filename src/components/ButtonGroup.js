import React from 'react';
import PropTypes from 'prop-types';
import {ButtonGroup as RSButtonGroup} from 'reactstrap';

const ButtonGroup = props => {
  const {children, ...otherProps} = props;
  return <RSButtonGroup {...otherProps}>{children}</RSButtonGroup>;
};

ButtonGroup.propTypes = {
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
   * Group buttons vertically.
   */
  vertical: PropTypes.bool,

  /**
   * Size of button group, options: 'sm', 'md', 'lg'.
   */
  size: PropTypes.string
};

export default ButtonGroup;
