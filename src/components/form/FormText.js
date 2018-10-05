import PropTypes from 'prop-types';
import {FormText as RSFormText} from 'reactstrap';

const FormText = props => {
  const {
    children,
    ...otherProps
  } = props;
  return (<RSFormText {...otherProps}>
    {children}
  </RSFormText>);
}

FormText.propTypes = {
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
   * Create inline form
   */
  inline: PropTypes.bool,

  /**
   * Text color, options: primary, secondary, success, warning, danger, info
   */
  color: PropTypes.string
}

export default FormText;
