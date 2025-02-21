import React, {useState} from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBContainer from 'react-bootstrap/Container';
import RBNavbar from 'react-bootstrap/Navbar';

import {bootstrapColors} from '../../private/BootstrapColors';
import {getLoadingState} from '../../private/util';
import Nav from './Nav';
import NavbarBrand from './NavbarBrand';
import NavbarToggler from './NavbarToggler';

/**
 * A self-contained navbar ready for use. If you need more customisability try
 * `Navbar` instead.
 */
function NavbarSimple({
  children,
  color = 'primary',
  dark = true,
  fluid = false,
  links_left = false,
  brand,
  brand_href,
  brand_external_link,
  expand = 'md',
  style,
  class_name,
  brand_style,
  className,
  ...otherProps
}) {
  const isBootstrapColor = bootstrapColors.has(color);

  const [navbarOpen, setNavbarOpen] = useState(false);

  const toggle = () => setNavbarOpen(!navbarOpen);

  return (
    <RBNavbar
      variant={dark ? 'dark' : 'light'}
      bg={isBootstrapColor ? color : null}
      color={isBootstrapColor ? color : null}
      style={!isBootstrapColor ? {backgroundColor: color, ...style} : style}
      className={class_name || className}
      expand={expand}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      <RBContainer fluid={fluid}>
        {brand && (
          <NavbarBrand
            href={brand_href}
            style={brand_style}
            external_link={brand_external_link}
          >
            {brand}
          </NavbarBrand>
        )}
        <NavbarToggler onClick={toggle} />
        <RBNavbar.Collapse in={navbarOpen}>
          <Nav className={links_left ? 'me-auto' : 'ms-auto'}>{children}</Nav>
        </RBNavbar.Collapse>
      </RBContainer>
    </RBNavbar>
  );
}

NavbarSimple.propTypes = {
  /**
   * The children of this NavbarSimple
   */
  children: PropTypes.node,

  /**
   * The ID of the NavbarSimple
   */
  id: PropTypes.string,

  /**
   * Sets the color of the NavbarSimple. Main options are primary, light and dark,
   * default light.
   *
   * You can also choose one of the other contextual classes provided by Bootstrap
   * (secondary, success, warning, danger, info, white) or any valid CSS color of your
   * choice (e.g. a hex code, a decimal code or a CSS color name)
   */
  color: PropTypes.string,

  /**
   * Applies the `navbar-dark` class to the NavbarSimple, causing text in the children
   * of the Navbar to use light colors for contrast / visibility.
   */
  dark: PropTypes.bool,

  /**
   * The contents of the Navbar are wrapped in a container, use fluid=True to make this
   * container fluid, so that in particular, the contents of the navbar fill the
   * available horizontal space.
   */
  fluid: PropTypes.bool,

  /**
   * Align the navlinks in the navbar to the left. Default: False.
   */
  links_left: PropTypes.bool,

  /**
   * Brand (text or dash components) that will be rendered on the top left of the
   * Navbar.
   */
  brand: PropTypes.node,

  /**
   * A URL to link to when the brand is clicked.
   */
  brand_href: PropTypes.string,

  /**
   * If True, clicking on the brand link will behave like a hyperlink. If False, the
   * brand link will behave like a dcc.Link component, and can be used in conjunction
   * with dcc.Location for navigation within a Dash app.
   */
  brand_external_link: PropTypes.bool,

  /**
   * Fix the navbar's position at the top or bottom of the page, options: top, bottom
   */
  fixed: PropTypes.string,

  /**
   * Stick the navbar to the top or the bottom of the viewport, options: top, bottom
   *
   * With `sticky`, the navbar remains in the viewport when you scroll. By contrast,
   * with `fixed`, the navbar will remain at the top or bottom of the page.
   */
  sticky: PropTypes.string,

  /**
   * Specify breakpoint at which to expand the menu bar. Options are: 'xs', 'sm', 'md',
   * 'lg', or 'xl'. Below this breakpoint the navbar will collapse and navitems will be
   * placed in a togglable collapse element.
   */
  expand: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

  /**
   * Additional inline CSS styles to apply to the NavbarSimple.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the NavbarSimple
   */
  class_name: PropTypes.string,

  /**
   * CSS style options for brand.
   */
  brand_style: PropTypes.object,

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
   * Additional CSS classes to apply to the NavbarSimple
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default NavbarSimple;
