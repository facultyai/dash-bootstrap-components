import PropTypes from 'prop-types';
import {ListGroupItem as RSListGroupItem} from 'reactstrap';

const ListGroupItem = props => {
  const {children, ...otherProps} = props;
  return <RSListGroupItem {...otherProps}>{children}</RSListGroupItem>;
};

ListGroupItem.propTypes = {
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
   * HTML tag to use for the listgroupitem, default: li
   */
  tag: PropTypes.string,

  /**
   * Apply active style to item
   */
  active: PropTypes.bool,

  /**
   * Apply disabled style to item
   */
  disabled: PropTypes.bool,

  /**
   * Item color, options: primary, secondary, success, info, warning,
   * danger, default: secondary
   */
  color: PropTypes.string,

  /**
   * Apply list-group-item-action class for hover animation etc.
   */
  action: PropTypes.bool
};

export default ListGroupItem;
