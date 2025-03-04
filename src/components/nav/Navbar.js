import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBNavbar from 'react-bootstrap/Navbar';

import {bootstrapColors} from '../../private/BootstrapColors';
import {getLoadingState} from '../../private/util';

/**
 * The Navbar component can be used to make fully customisable navbars.
 */
function Navbar({
  children,
  dark = true,
  color = 'primary',
  expand = 'md',
  style,
  class_name,
  tag,
  className,
  ...otherProps
}) {
  const isBootstrapColor = bootstrapColors.has(color);
  return (
    <RBNavbar
      variant={dark ? 'dark' : 'light'}
      as={tag}
      bg={isBootstrapColor ? color : null}
      style={{backgroundColor: !isBootstrapColor && color, ...style}}
      className={class_name || className}
      expand={expand}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBNavbar>
  );
}

Navbar.propTypes = {
  /**
   * The children of this component
   */
  children: PropTypes.node,

  /**
   * The ID of the component
   */
  id: PropTypes.string,

  /**
   * Applies the `navbar-dark` class to the Navbar, causing text in the children
   * of the Navbar to use light colors for contrast / visibility.
   */
  dark: PropTypes.bool,

  /**
   * Fix the navbar's position at the top or bottom of the page, options: top, bottom
   */
  fixed: PropTypes.string,

  /**
   * Position the navbar at the top of the viewport, but only after scrolling past it.
   * A convenience prop for the sticky-top positioning class. Not supported in <= IE11
   * and other older browsers
   *
   * With `sticky`, the navbar remains in the viewport when you scroll. By
   * contrast, with `fixed`, the navbar will remain at the top or bottom of
   * the page.  sticky='top'
   */
  sticky: PropTypes.oneOf(['top']),

  /**
   * Sets the color of the Navbar. Main options are primary, light and dark, default primary.
   *
   * You can also choose one of the other contextual classes provided by Bootstrap
   * (secondary, success, warning, danger, info, white) or any valid CSS color of
   * your choice (e.g. a hex code, a decimal code or a CSS color name)
   */
  color: PropTypes.string,

  /**
   * Specify screen size at which to expand the menu bar, e.g. sm, md, lg etc.
   */
  expand: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

  /**
   * Additional inline CSS styles to apply to the Navbar.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Navbar.
   */
  class_name: PropTypes.string,

  /**
   * The ARIA role attribute.
   */
  role: PropTypes.string,

  /**
   * HTML tag to use for the Navbar, default 'nav'
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
   * Additional CSS classes to apply to the Navbar.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the input changes
   */
  setProps: PropTypes.func
};

export default Navbar;
