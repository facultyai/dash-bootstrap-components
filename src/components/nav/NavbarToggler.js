import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBNavbarToggle from 'react-bootstrap/NavbarToggle';

import {getLoadingState} from '../../private/util';

/**
 * Use this component to create a navbar toggle to show navlinks when the
 * navbar collapses on smaller screens.
 */
function NavbarToggler({
  children,
  className,
  class_name,
  n_clicks = 0,
  setProps,
  ...otherProps
}) {
  return (
    <RBNavbarToggle
      onClick={() => {
        if (setProps) {
          setProps({n_clicks: n_clicks + 1});
        }
      }}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBNavbarToggle>
  );
}

NavbarToggler.propTypes = {
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
   * Toggle type, default: button.
   */
  type: PropTypes.string,

  /**
   * An integer that represents the number of times
   * that this element has been clicked on.
   */
  n_clicks: PropTypes.number,

  /**
   * Dash-assigned callback that gets fired when the button is clicked.
   */
  setProps: PropTypes.func
};

export default NavbarToggler;
