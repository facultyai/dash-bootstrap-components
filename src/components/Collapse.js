import React from 'react';
import PropTypes from 'prop-types';
import {Collapse as RSCollapse} from 'reactstrap';

const Collapse = props => {
  const {children, is_open, ...otherProps} = props;
  return (
    <RSCollapse isOpen={is_open} {...otherProps}>
      {children}
    </RSCollapse>
  );
};

Collapse.propTypes = {
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
   * HTML tag to use for the collapse contents. Default: div.
   */
  tag: PropTypes.string,

  /**
   * Whether collapse is currently open.
   */
  is_open: PropTypes.bool,

  /**
   * Set to True when using a collapse inside a navbar.
   */
  navbar: PropTypes.bool
};

export default Collapse;
