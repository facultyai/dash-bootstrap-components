import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBFormLabel from 'react-bootstrap/FormLabel';

import {bootstrapTextColors} from '../../private/BootstrapColors';
import {getLoadingState} from '../../private/util';

const alignMap = {
  start: 'align-self-start',
  center: 'align-self-center',
  end: 'align-self-end'
};

/**
 * A component for adding labels to inputs in forms with added sizing controls.
 */
function Label({
  children,
  html_for,
  width,
  xs,
  sm,
  md,
  lg,
  xl,
  xxl,
  size,
  className,
  class_name,
  color,
  style,
  check,
  align = 'center',
  ...otherProps
}) {
  const isBootstrapColor = bootstrapTextColors.has(color);

  // check if column width has been specified, use alignment attribute if so
  const cols = [width, xs, sm, md, lg, xl, xxl].filter(colWidth => colWidth);

  [width, xs, sm, md, lg, xl, xxl].forEach(breakpoint => {
    if (typeof breakpoint === 'object' && breakpoint !== null) {
      breakpoint.span = breakpoint.size;
    }
  });

  const alignClass = align && alignMap[align];
  const classes = classNames(
    class_name || className,
    cols.length && alignClass,
    color && isBootstrapColor && `text-${color}`,
    check && 'form-check-label'
  );

  return (
    <RBFormLabel
      htmlFor={html_for}
      column={size || cols.length > 0}
      xs={xs || width}
      sm={sm}
      md={md}
      lg={lg}
      xl={xl}
      xxl={xxl}
      className={classes}
      style={!isBootstrapColor ? {color: color, ...style} : style}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBFormLabel>
  );
}

const stringOrNumberProp = PropTypes.oneOfType([
  PropTypes.number,
  PropTypes.string
]);
const columnProps = PropTypes.oneOfType([
  PropTypes.string,
  PropTypes.number,
  PropTypes.shape({
    size: stringOrNumberProp,
    order: stringOrNumberProp,
    offset: stringOrNumberProp
  })
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
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

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
   * Set to True when using to label a Checkbox or RadioButton.
   */
  check: PropTypes.bool,

  /**
   * Specify width of label for use in grid layouts. Accepts the same values
   * as the Col component.
   */
  width: columnProps,

  /**
   * Specify label width on extra small screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  xs: columnProps,

  /**
   * Specify label width on a small screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  sm: columnProps,

  /**
   * Specify label width on a medium screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  md: columnProps,

  /**
   * Specify label width on a large screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  lg: columnProps,

  /**
   * Specify label width on an extra large screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  xl: columnProps,

  /**
   * Specify label width on an extra extra large screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  xxl: columnProps,

  /**
   * Set vertical alignment of the label, options: 'start', 'center', 'end',
   * default: 'center'
   */
  align: PropTypes.oneOf(['start', 'center', 'end']),

  /**
   * Text color, options: primary, secondary, success, warning, danger, info,
   * muted, light, dark, body, white, black-50, white-50 or any valid CSS color of
   * your choice (e.g. a hex code, a decimal code or a CSS color name).
   */
  color: PropTypes.string
};

export default Label;
