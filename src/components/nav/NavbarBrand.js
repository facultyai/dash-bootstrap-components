import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBNavbarBrand from 'react-bootstrap/NavbarBrand';

import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * Call out attention to a brand name or site title within a Navbar.
 */
function NavbarBrand({children, class_name, href, className, ...otherProps}) {
  return (
    <RBNavbarBrand
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      href={href}
      as={href ? Link : 'span'}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBNavbarBrand>
  );
}

NavbarBrand.propTypes = {
  /**
   * The children of this NavbarBrand
   */
  children: PropTypes.node,

  /**
   * The ID of the NavbarBrand
   */
  id: PropTypes.string,

  /**
   * If True, clicking on the NavbarBrand will behave like a hyperlink. If False, the
   * NavbarBrand will behave like a dcc.Link component, and can be used in conjunction
   * with dcc.Location for navigation within a Dash app.
   */
  external_link: PropTypes.bool,

  /**
   * URL of the linked resource
   */
  href: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the NavbarBrand.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the NavbarBrand
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
   * Additional CSS classes to apply to the NavbarBrand
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default NavbarBrand;
