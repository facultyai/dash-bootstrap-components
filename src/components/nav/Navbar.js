import React from 'react';
import PropTypes from 'prop-types';
import {Navbar as RSNavbar} from 'reactstrap';

const navbarColors = new Set([
  'primary',
  'light',
  'dark',
  'secondary',
  'success',
  'warning',
  'danger',
  'info',
  'white'
]);

const Navbar = props => {
  const {children, color, style, ...otherProps} = props;
  const isNavbarColor = navbarColors.has(color);

  return (
    <RSNavbar
      color={isNavbarColor && color}
      style={{backgroundColor: !isNavbarColor && color, ...style}}
      {...otherProps}
    >
      {children}
    </RSNavbar>
  );
};

Navbar.defaultProps = {
  fluid: false,
  color: 'light',
  light: true,
  expand: 'md'
};

Navbar.propTypes = {
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
   * Apply light styling to the navbar
   */
  light: PropTypes.bool,

  /**
   * Apply dark styling to the navbar
   */
  dark: PropTypes.bool,

  /**
   * Fix the navbar's position at the top or bottom of the page, options: top, bottom
   */
  fixed: PropTypes.string,

  /**
   * Stick the navbar to the top or the bottom of the viewport, options: top, bottom
   *
   * With `sticky`, the navbar remains in the viewport when you scroll. By
   * contrast, with `fixed`, the navbar will remain at the top or bottom of
   * the page.
   */
  sticky: PropTypes.string,

  /**
   * Sets the color of the Navbar. Main options are primary, light and dark, default light.
   *
   * You can also choose one of the other contextual classes provided by Bootstrap
   * (secondary, success, warning, danger, info, white) or any valid CSS color of
   * your choice (e.g. a hex code, a decimal code or a CSS color name)
   */
  color: PropTypes.string,

  /**
   * The ARIA role attribute.
   */
  role: PropTypes.string,

  /**
   * HTML tag to use for the Navbar, default 'nav'
   */
  tag: PropTypes.string,

  /**
   * Specify screen size at which to expand the menu bar, e.g. sm, md, lg etc.
   */
  expand: PropTypes.oneOfType([PropTypes.bool, PropTypes.string])
};

export default Navbar;
