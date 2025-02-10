import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBContainer from 'react-bootstrap/Container';

import {getLoadingState} from '../../private/util';

/**
 * Containers provide a means to center and horizontally pad your site’s
 * contents.
 */
function Container({children, className, class_name, tag, ...otherProps}) {
  return (
    <RBContainer
      as={tag}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBContainer>
  );
}

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
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
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
   * If True the container-fluid class will be applied, and the Container will
   * expand to fill available space. A non-fluid container resizes responsively
   * to a fixed width at the different breakpoints.
   *
   * You can also set the fluid property to one of the Bootstrap breakpoints:
   * "sm", "md", "lg", "xl" or "xxl", so that the container fluidly expands to
   * fill the screen until the specified breakpoint, then resize responsively
   * at higher breakpoints.
   */
  fluid: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

  /**
   * HTML tag to apply the container class to, default: div
   */
  tag: PropTypes.string
};

export default Container;
