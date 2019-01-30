import React from 'react';
import PropTypes from 'prop-types';
import {Form as RSForm} from 'reactstrap';

const Form = props => {
  const {children, ...otherProps} = props;
  return <RSForm {...otherProps}>{children}</RSForm>;
};

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
  className: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Use inline=True to apply the `form-inline` class, allowing you to display
   * a series of labels, form controls, and buttons on a single horizontal row.
   * Form controls within inline forms vary slightly from their default states.
   */
  inline: PropTypes.bool
};

export default Form;
