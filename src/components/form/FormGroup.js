import PropTypes from 'prop-types';
import {FormGroup as RSFormGroup} from 'reactstrap';

const FormGroup = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSFormGroup {...otherProps}>
    {children}
  </RSFormGroup>);
}

FormGroup.propTypes = {
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
   * Apply row class to FormGroup
   */
  row: PropTypes.bool,

  /**
   * Set to true for groups with checkboxes or radio buttons for improved layout
   */
  check: PropTypes.bool,

  /**
   * Create inline group
   */
  inline: PropTypes.bool,

  /**
   * Apply disabled CSS class to form group
   */
  disabled: PropTypes.bool
}

export default FormGroup;
