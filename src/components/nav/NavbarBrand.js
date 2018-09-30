import PropTypes from 'prop-types';
import {NavbarBrand as RSNavbarBrand} from 'reactstrap';
import Link from '../../private/Link';

const NavbarBrand = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSNavbarBrand {...otherProps} tag={Link}>
    {children}
  </RSNavbarBrand>);
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
  className: PropTypes.string,

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
}

export default NavbarBrand;
