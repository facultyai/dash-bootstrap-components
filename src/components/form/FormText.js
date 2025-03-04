import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBFormText from 'react-bootstrap/FormText';

import {bootstrapTextColors} from '../../private/BootstrapColors';
import {getLoadingState} from '../../private/util';

/**
 * Add explanatory text below your input components.
 */
function FormText({
  children,
  color,
  style,
  class_name,
  className,
  ...otherProps
}) {
  const isBootstrapColor = bootstrapTextColors.has(color);
  const classes = classNames(
    class_name || className,
    isBootstrapColor && `text-${color}`
  );
  return (
    <RBFormText
      style={!isBootstrapColor ? {color: color, ...style} : style}
      className={classes}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBFormText>
  );
}

FormText.propTypes = {
  /**
   * The children of this FormText
   */
  children: PropTypes.node,

  /**
   * The ID of the FormText
   */
  id: PropTypes.string,

  /**
   * Text color, options: primary, secondary, success, warning, danger, info,
   * muted, light, dark, body, white, black-50, white-50 or any valid CSS color of
   * your choice (e.g. a hex code, a decimal code or a CSS color name).
   */
  color: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the FormText.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the FormText
   */
  class_name: PropTypes.string,

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
   * Additional CSS classes to apply to the FormText
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default FormText;
