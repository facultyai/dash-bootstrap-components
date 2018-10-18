import PropTypes from 'prop-types';
import {Label as RSLabel} from 'reactstrap';
import classNames from 'classnames';

const alignMap = {
  start: 'align-self-start',
  center: 'align-self-center',
  end: 'align-self-end'
}

const colWidths = ['width', 'xs', 'sm', 'md', 'lg', 'xl'];

const Label = props => {
  const {
    children,
    html_for,
    width,
    align,
    xs,
    className,
    ...otherProps
  } = props;

  // check if column width has been specified, use alignment attribute if so
  const cols = colWidths.filter(colWidth => props[colWidth] || props[colWidth] === '');

  const alignClass = align && alignMap[align];
  const classes = classNames(className, cols.length && alignClass);

  return (<RSLabel for={html_for} xs={xs || width} className={classes} {...otherProps}>
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
   * Hide label from UI, but allow it to be discovered by screen-readers.
   */
  hidden: PropTypes.bool,

  /**
   * Set size of label. Options 'sm', 'md' (default) or 'lg'.
   */
  size: PropTypes.string,

  /**
   * Set the `for` attribute of the label to bind it to a particular element
   */
  html_for: PropTypes.string,

  /**
   * Specify width of label for use in grid layouts. Accepts the same values
   * as the Col component.
   */
  width: columnProps,

  /**
   * Specify label width on extra small screen
   */
  xs: columnProps,

  /**
   * Specify label width on a small screen
   */
  sm: columnProps,

  /**
   * Specify label width on a medium screen
   */
  md: columnProps,

  /**
   * Specify label width on a large screen
   */
  lg: columnProps,

  /**
   * Specify label width on an extra large screen
   */
  xl: columnProps,

  /**
   * Set vertical alignement of the label, default: `center`
   */
  align: PropTypes.oneOf(['start', 'center', 'end']),
};

Label.defaultProps = {
  align: 'center',
}

export default Label;
