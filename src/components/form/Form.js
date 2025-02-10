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
  className,
  class_name,
  prevent_default_on_submit = true,
  n_submit = 0,
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
   * The URI of a program that processes the information submitted via the form.
   */
  action: PropTypes.string,

  /**
   * Defines which HTTP method to use when submitting the form. Can be GET
   * (default) or POST.
   */
  method: PropTypes.oneOf(['GET', 'POST']),

  /**
   * Number of times the `Enter` key was pressed while the input had focus.
   */
  n_submit: PropTypes.number,

  /**
   * The form calls preventDefault on submit events. If you want form data to
   * be posted to the endpoint specified by `action` on submit events, set
   * prevent_default_on_submit to False. Defaults to True.
   */
  prevent_default_on_submit: PropTypes.bool,

  /**
   * Dash-assigned callback that gets fired when the input changes.
   */
  setProps: PropTypes.func
};

export default Form;
