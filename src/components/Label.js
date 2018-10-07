import PropTypes from 'prop-types';
import {Label as RSLabel} from 'reactstrap';

const Label = props => {
  const {
    children,
    html_for,
    ...otherProps
  } = props;
  return (<RSLabel for={html_for} {...otherProps}>
    {children}
  </RSLabel>);
}

const stringOrNumberProp = PropTypes.oneOfType([PropTypes.number, PropTypes.string]);
const columnProps = PropTypes.oneOfType([
  PropTypes.string,
  PropTypes.number,
  PropTypes.shape({size: stringOrNumberProp, order: stringOrNumberProp, offset: stringOrNumberProp})
]);

Label.propTypes = {
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
   *
   */
  hidden: PropTypes.bool,

  check: PropTypes.bool,
  size: PropTypes.string,
  html_for: PropTypes.string,
  xs: columnProps,
  sm: columnProps,
  md: columnProps,
  lg: columnProps,
  xl: columnProps
}

export default Label;
