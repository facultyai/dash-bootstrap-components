import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBNavbarToggle from 'react-bootstrap/NavbarToggle';

import {getLoadingState} from '../../private/util';

/**
 * Use this component to create a navbar toggle to show navlinks when the Navbar
 * collapses on smaller screens.
 */
function NavbarToggler({
  children,
  class_name,
  n_clicks = 0,
  className,
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
   * The children of this component
   */
  children: PropTypes.node,

  /**
   * The ID of the component
   */
  id: PropTypes.string,

  /**
   * The number of times the NavbarToggler has been clicked.
   */
  n_clicks: PropTypes.number,

  /**
   * Additional inline CSS styles to apply to the NavbarToggler.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the NavbarToggler.
   */
  class_name: PropTypes.string,

  /**
   * Toggle type, default: button.
   */
  type: PropTypes.string,

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
   * Additional CSS classes to apply to the NavbarToggler.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the button is clicked.
   */
  setProps: PropTypes.func
};

export default NavbarToggler;
