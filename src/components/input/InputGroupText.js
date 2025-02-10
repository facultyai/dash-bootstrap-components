import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBInputGroup from 'react-bootstrap/InputGroup';
import {getLoadingState} from '../../private/util';

/**
 * Use for wrapping text in InputGroups.
 */
const InputGroupText = props => {
  const {children, className, class_name, ...otherProps} = props;
  return (
    <RBInputGroup.Text
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBInputGroup.Text>
  );
};

InputGroupText.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component.
   */
  children: PropTypes.node,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Often used with CSS to style elements with common properties.
   */
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string
};

export default InputGroupText;
