import PropTypes from 'prop-types';
import {Collapse as RSCollapse} from 'reactstrap';

const Collapse = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSCollapse {...otherProps}>
    {children}
  </RSCollapse>);
}

Collapse.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component.
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
   * HTML tag to use for the card body. Default: div.
   */
  tag: PropTypes.string,

  /**
   * Whether collapse is currently open.
   */
  isOpen: PropTypes.bool,

  /**
   * Enable for use in a navbar.
   */
  navbar: PropTypes.bool
}

export default Collapse;
