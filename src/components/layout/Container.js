import React from 'react';
import PropTypes from 'prop-types';
import {Container as RSContainer} from 'reactstrap';

const Container = props => {
  const {children, ...otherProps} = props;
  return <RSContainer {...otherProps}>{children}</RSContainer>;
};

Container.propTypes = {
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
   * Should container be fluid or not
   */
  fluid: PropTypes.bool,

  /**
   * HTML tag to apply the container class to, default: div
   */
  tag: PropTypes.string
};

export default Container;
