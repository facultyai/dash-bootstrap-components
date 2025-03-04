import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBFormLabel from 'react-bootstrap/FormLabel';

import {bootstrapTextColors} from '../../private/BootstrapColors';
import {columnPropType} from '../../private/types';
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
  class_name,
  color,
  style,
  check,
  align = 'center',
  className,
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

Label.propTypes = {
  /**
   * The children of this Label
   */
  children: PropTypes.node,
  /**
   * The ID of the Label
   */
  id: PropTypes.string,

  /**
   * Set size of label. Options 'sm', 'md' (default) or 'lg'.
   */
  size: PropTypes.string,

  /**
   * Set the `for` attribute of the label to bind it to a particular element
   */
  html_for: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the Label.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Label
   */
  class_name: PropTypes.string,

  /**
   * Hide label from UI, but allow it to be discovered by screen-readers.
   */
  hidden: PropTypes.bool,

  /**
   * Set to True when using to label a Checkbox or RadioButton.
   */
  check: PropTypes.bool,

  /**
   * Specify width of label for use in grid layouts. Accepts the same values
   * as the Col component.
   */
  width: columnPropType,

  /**
   * Specify label width on extra small screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  xs: columnPropType,

  /**
   * Specify label width on a small screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  sm: columnPropType,

  /**
   * Specify label width on a medium screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  md: columnPropType,

  /**
   * Specify label width on a large screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  lg: columnPropType,

  /**
   * Specify label width on an extra large screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  xl: columnPropType,

  /**
   * Specify label width on an extra extra large screen
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for
   * more details.
   */
  xxl: columnPropType,

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
  color: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve performance by React.js
   * while rendering components
   *
   * See https://react.dev/learn/rendering-lists#why-does-react-need-keys for more info
   */
  key: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the Label
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Label;
