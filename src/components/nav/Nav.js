import PropTypes from 'prop-types';
import {Nav as RSNav} from 'reactstrap';

const Nav = props => {
  const {children, ...otherProps} = props;
  return <RSNav {...otherProps}>{children}</RSNav>;
};

Nav.propTypes = {
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
   * Apply Tab styling to nav items
   */
  tabs: PropTypes.bool,

  /**
   * Apply Pill styling to nav items
   */
  pills: PropTypes.bool,

  /**
   * Apply Card styling to nav items
   */
  card: PropTypes.bool,

  /**
   * Expand the nav items to fill the entire space available
   */
  fill: PropTypes.bool,

  /**
   * Expand the nav items to fill the entire space available, making sure
   * every nav item has the same width.
   */
  justified: PropTypes.bool,

  /**
   * Arrange NavItems vertically
   */
  vertical: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

  /**
   * Arrange NavItems horizontally
   */
  horizontal: PropTypes.string,

  /**
   * Set to true if using Nav in Navbar component.
   */
  navbar: PropTypes.bool
};

export default Nav;
