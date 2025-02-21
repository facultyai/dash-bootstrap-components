import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBContainer from 'react-bootstrap/Container';

import {getLoadingState} from '../../private/util';

/**
 * Containers provide a means to center and horizontally pad your site’s contents.
 */
function Container({children, class_name, tag, className, ...otherProps}) {
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
   * The children of the Container
   */
  children: PropTypes.node,

  /**
   * The ID of the Container
   */
  id: PropTypes.string,

  /**
   * If True the container-fluid class will be applied, and the Container will expand to
   * fill available space. A non-fluid container resizes responsively to a fixed width
   * at the different breakpoints.
   *
   * You can also set the fluid property to one of the Bootstrap breakpoints: "sm",
   * "md", "lg", "xl" or "xxl", so that the container fluidly expands to fill the screen
   * until the specified breakpoint, then resize responsively at higher breakpoints.
   */
  fluid: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

  /**
   * Additional inline CSS styles to apply to the Container.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Container.
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to apply the container class to, default: div
   */
  tag: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the Container.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Container;
