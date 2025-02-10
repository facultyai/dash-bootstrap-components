import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBNavbarBrand from 'react-bootstrap/NavbarBrand';

import Link from '../../private/Link';
import {getLoadingState} from '../../private/util';

/**
 * Call out attention to a brand name or site title within a navbar.
 */
function NavbarBrand({children, className, class_name, href, ...otherProps}) {
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
   * If true, the browser will treat this as an external link,
   * forcing a page refresh at the new location. If false,
   * this just changes the location without triggering a page
   * refresh. Use this if you are observing dcc.Location, for
   * instance. Defaults to true for absolute URLs and false
   * otherwise.
   */
  external_link: PropTypes.bool,

  /**
   * URL of the linked resource
   */
  href: PropTypes.string
};

export default NavbarBrand;
