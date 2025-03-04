import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBFormControl from 'react-bootstrap/FormControl';

import {getLoadingState} from '../../private/util';

/**
 * The FormFeedback component can be used to provide feedback on input values in a form.
 * Add the form feedback to your layout and set the `valid` or `invalid` props of the
 * associated input to toggle visibility.
 */
function FormFeedback({children, class_name, className, ...otherProps}) {
  return (
    <RBFormControl.Feedback
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBFormControl.Feedback>
  );
}

FormFeedback.propTypes = {
  /**
   * The children of this FormFeedback
   */
  children: PropTypes.node,

  /**
   * The ID of the FormFeedback
   */
  id: PropTypes.string,

  /**
   * Either 'valid' or 'invalid'.
   */
  type: PropTypes.oneOf(['valid', 'invalid']),

  /**
   * Use styled tooltips to display validation feedback.
   */
  tooltip: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the FormFeedback.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the FormFeedback
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
   * Additional CSS classes to apply to the FormFeedback
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default FormFeedback;
