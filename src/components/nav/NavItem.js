import PropTypes from 'prop-types';
import { NavItem as RSNavItem } from 'reactstrap';

const NavItem = props => {
  const {children, ...otherProps} = props;
  return (
    <RSNavItem {...otherProps}>
      {children}
    </RSNavItem>
  );
}

NavItem.propTypes = {
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
   * Apply active style to item.
   */
  active: PropTypes.bool
}

export default NavItem;
