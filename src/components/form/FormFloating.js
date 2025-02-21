import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBFormFloating from 'react-bootstrap/FormFloating';

import {getLoadingState} from '../../private/util';

/**
 * A component for adding float labels to form controls in forms.
 */
function FormFloating({
  children,
  html_for,
  class_name,
  className,
  ...otherProps
}) {
  return (
    <RBFormFloating
      htmlFor={html_for}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBFormFloating>
  );
}

FormFloating.propTypes = {
  /**
   * The children of this FormFloating
   */
  children: PropTypes.node,

  /**
   * The ID of the FormFloating
   */
  id: PropTypes.string,

  /**
   * Set the `for` attribute of the label to bind it to a particular element
   */
  html_for: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the FormFloating.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the FormFloating
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
   * Additional CSS classes to apply to the FormFloating
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default FormFloating;
