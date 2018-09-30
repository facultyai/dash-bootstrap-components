import PropTypes from 'prop-types';
import {DropdownItem as RSDropdownItem} from 'reactstrap';

const DropdownItem = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSDropdownItem {...otherProps}>
    {children}
  </RSDropdownItem>);
}

DropdownItem.propTypes = {
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
   * Set active CSS style
   */
  active: PropTypes.bool,

  /**
   * Set disabled CSS style
   */
  disabled: PropTypes.bool,

  /**
   * Create menu divider
   */
  divider: PropTypes.bool,

  /**
   * Create menu header
   */
  header: PropTypes.bool,

  /**
   * Link for the menu item
   */
  href: PropTypes.string
};

export default DropdownItem;
