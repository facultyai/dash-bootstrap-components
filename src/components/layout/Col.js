import PropTypes from 'prop-types';
import {Col as RSCol} from 'reactstrap';
import classNames from 'classnames';

const alignMap = {
  start: 'align-self-start',
  center: 'align-self-center',
  end: 'align-self-end'
};

const Col = props => {
  const {children, xs, width, align, className, ...otherProps} = props;

  const alignClass = align && alignMap[align];
  const classes = classNames(className, alignClass);

  return (
    <RSCol xs={xs || width} className={classes} {...otherProps}>
      {children}
    </RSCol>
  );
};

const stringOrNumberProp = PropTypes.oneOfType([
  PropTypes.number,
  PropTypes.string
]);
const columnProps = PropTypes.oneOfType([
  PropTypes.string,
  PropTypes.number,
  PropTypes.bool,
  PropTypes.shape({
    size: PropTypes.oneOfType([
      PropTypes.bool,
      PropTypes.number,
      PropTypes.string
    ]),
    // example size values:
    // 12 || "12" => col-12 or col-`width`-12
    // auto => col-auto or col-`width`-auto
    // true => col or col-`width`
    order: stringOrNumberProp,
    offset: stringOrNumberProp
  })
]);

Col.propTypes = {
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
   * Specify column behaviour on an extra small screen
   */
  xs: columnProps,

  /**
   * Specify column behaviour on a small screen
   */
  sm: columnProps,

  /**
   * Specify column behaviour on a medium screen
   */
  md: columnProps,

  /**
   * Specify column behaviour on a large screen
   */
  lg: columnProps,

  /**
   * Specify column behaviour on an extra large screen
   */
  xl: columnProps,

  /**
   * Specify the width of the column. Is overriden if xs is specified
   */
  width: columnProps,

  /**
   * Set vertical alignment of this column in row
   */
  align: PropTypes.oneOf(['start', 'center', 'end'])
};

export default Col;
