import PropTypes from 'prop-types';
import {InputGroup as RSInputGroup} from 'reactstrap';

const InputGroup = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSInputGroup {...otherProps}>
    {children}
  </RSInputGroup>);
}

InputGroup.propTypes = {
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
   * Whether to prepend or append the addon.
   */
  addonType: PropTypes.oneOf(['prepend', 'append'])
}

export default InputGroup;
