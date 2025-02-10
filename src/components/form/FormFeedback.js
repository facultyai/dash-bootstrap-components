import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBFormControl from 'react-bootstrap/FormControl';

import {getLoadingState} from '../../private/util';

/**
 * The FormFeedback component can be used to provide feedback on input values
 * in a form. Add the form feedback to your layout and set the `valid` or
 * `invalid` props of the associated input to toggle visibility.
 */
function FormFeedback({children, className, class_name, ...otherProps}) {
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
   * Either 'valid' or 'invalid'.
   */
  type: PropTypes.string,

  /**
   * Use styled tooltips to display validation feedback.
   */
  tooltip: PropTypes.bool
};

export default FormFeedback;
