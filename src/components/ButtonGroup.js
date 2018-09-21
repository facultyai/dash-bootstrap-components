import PropTypes from 'prop-types';
import {ButtonGroup as RSButtonGroup} from 'reactstrap';

const ButtonGroup = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSButtonGroup {...otherProps}>
    {children}
  </RSButtonGroup>);
}

ButtonGroup.propTypes = {
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
   * Class for the button group
   */
  className: PropTypes.string,

  /**
   * Stack buttons vertically
   */
  vertical: PropTypes.bool,

  /**
   * Size of button group
   */
  size: PropTypes.string
}

export default ButtonGroup;
