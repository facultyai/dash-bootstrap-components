import React from 'react';

import PropTypes from 'prop-types';
import RBForm from 'react-bootstrap/Form';

import {getLoadingState} from '../../private/util';

/**
 * The Form component can be used to organise collections of input components
 * and apply consistent styling.
 */
function Form({
  children,
  n_submit = 0,
  prevent_default_on_submit = true,
  class_name,
  className,
  setProps,
  ...otherProps
}) {
  return (
    <RBForm
      onSubmit={e => {
        if (prevent_default_on_submit) {
          e.preventDefault();
        }
        if (setProps) {
          setProps({n_submit: n_submit + 1});
        }
      }}
      className={class_name || className}
      {...otherProps}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBForm>
  );
}

Form.propTypes = {
  /**
   * The children of this Form
   */
  children: PropTypes.node,

  /**
   * The ID of the Form
   */
  id: PropTypes.string,

  /**
   * Number of times the form was submitted.
   */
  n_submit: PropTypes.number,

  /**
   * Additional inline CSS styles to apply to the Form.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Form
   */
  class_name: PropTypes.string,

  /**
   * The URI of a program that processes the information submitted via the form.
   */
  action: PropTypes.string,

  /**
   * Defines which HTTP method to use when submitting the form. Can be GET (default) or
   * POST.
   */
  method: PropTypes.oneOf(['GET', 'POST']),

  /**
   * The form calls preventDefault on submit events. If you want form data be posted to
   * the endpoint specified by `action` on submit events, set prevent_default_on_submit
   * to False. Defaults to True.
   */
  prevent_default_on_submit: PropTypes.bool,

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
   * Additional CSS classes to apply to the Form
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the input changes.
   */
  setProps: PropTypes.func
};

export default Form;
