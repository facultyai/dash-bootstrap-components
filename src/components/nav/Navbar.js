import React from 'react';
import PropTypes from 'prop-types';
import {
  Collapse,
  Container,
  Nav,
  NavbarToggler,
  Navbar as RSNavbar,
} from 'reactstrap';

import Link from '../../private/Link';

import NavbarBrand from './NavbarBrand'

class Navbar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isOpen: false,
    };
    this.toggle = this.toggle.bind(this);
  }

  toggle() {
    this.setState({
      isOpen: !this.state.isOpen
    });
  }

  render() {
    const {
      children,
      brand,
      brandHref,
      brandStyle,
      brand_external_link,
      linksLeft,
      fluid,
      ...otherProps
    } = this.props;

    return (
      <RSNavbar {...otherProps}>
        <Container fluid={fluid}>
          {brand && <NavbarBrand href={brandHref} style={brandStyle} external_link={brand_external_link}>{brand}</NavbarBrand>}
          <NavbarToggler onClick={this.toggle} />
          <Collapse isOpen={this.state.isOpen} navbar={true} >
            <Nav
              className={linksLeft ? "mr-auto" : "ml-auto"}
              navbar
            >
              {children}
            </Nav>
          </Collapse>
        </Container>
      </RSNavbar>
    )
  }
}

Navbar.defaultProps = {
  fluid: false,
  color: "light",
  light: true,
  expand: "md"
}

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
   * Branding text, to go top left of the navbar
   */
  brand: PropTypes.string,

  /**
   * Link to attach to brand
   */
  brandHref: PropTypes.string,

  /**
   * Style options for Brand
   */
  brandStyle: PropTypes.object,

  /**
   * If true, the browser will treat the brand link as external,
   * forcing a page refresh at the new location. If false,
   * this just changes the location without triggering a page
   * refresh. Use this if you are observing dcc.Location, for
   * instance. Defaults to true for absolute URLs and false
   * otherwise.
   */
  brand_external_link: PropTypes.bool,

  /**
   * Allow menu items to expand to fill width of page
   */
  fluid: PropTypes.bool,

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
   * Sets the color of the Navbar, options: primary, secondary, success, warning, danger, info, light.
   */
  color: PropTypes.string,

  /**
   * HTML tag to use for the Navbar, default: nav
   */
  tag: PropTypes.string,

  /**
   * Specify screen size at which to expand the menu bar, e.g. sm, md, lg etc.
   */
  expand: PropTypes.oneOfType([PropTypes.bool, PropTypes.string])
}

export default Navbar;
