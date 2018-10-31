import PropTypes from 'prop-types';
import {ListGroup as RSListGroup} from 'reactstrap';

const ListGroup = props => {
  const {children, ...otherProps} = props;
  return <RSListGroup {...otherProps}>{children}</RSListGroup>;
};

ListGroup.propTypes = {
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
   * HTML tag to use for the list, default: ul
   */
  tag: PropTypes.string,

  /**
   * Apply "flush" styling to list
   */
  flush: PropTypes.bool
};

export default ListGroup;
