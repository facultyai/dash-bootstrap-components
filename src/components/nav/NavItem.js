import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBNavItem from 'react-bootstrap/NavItem';

import {getLoadingState} from '../../private/util';

/**
 * Create a single item in a Nav.
 */
function NavItem({children, class_name, className, ...otherProps}) {
  return (
    <RBNavItem
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBNavItem>
  );
}

NavItem.propTypes = {
  /**
   * The children of this NavItem.
   */
  children: PropTypes.node,

  /**
   * The ID of the NavItem.
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the NavItem.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the NavItem.
   */
  class_name: PropTypes.string,

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
   * Additional CSS classes to apply to the NavItem.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default NavItem;
