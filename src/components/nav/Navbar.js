import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBNavbar from 'react-bootstrap/Navbar';
import {bootstrapColors} from '../../private/BootstrapColors';

/**
 * The Navbar component can be used to make fully customisable navbars.
 */
const Navbar = props => {
  const {
    children,
    color,
    style,
    loading_state,
    className,
    class_name,
    light,
    dark,
    tag,
    ...otherProps
  } = props;
  const isBootstrapColor = bootstrapColors.has(color);

  return (
    <RBNavbar
      variant={dark ? 'dark' : 'light'}
      as={tag}
      bg={isBootstrapColor ? color : null}
      style={{backgroundColor: !isBootstrapColor && color, ...style}}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
    >
      {children}
    </RBNavbar>
  );
};

Navbar.defaultProps = {
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
   * Applies the `navbar-light` class to the Navbar, causing text in the children
   * of the Navbar to use dark colors for contrast / visibility.
   */
  light: PropTypes.bool,

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
  expand: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

  /**
   * Object that holds the loading state object coming from dash-renderer
   */
  loading_state: PropTypes.shape({
    /**
     * Determines if the component is loading or not
     */
    is_loading: PropTypes.bool,
    /**
     * Holds which property is loading
     */
    prop_name: PropTypes.string,
    /**
     * Holds the name of the component that is loading
     */
    component_name: PropTypes.string
  })
};

export default Navbar;
