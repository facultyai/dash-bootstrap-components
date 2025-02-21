import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBInputGroup from 'react-bootstrap/InputGroup';

import {getLoadingState} from '../../private/util';

/**
 * Use for wrapping text in InputGroups.
 */
function InputGroupText({children, class_name, className, ...otherProps}) {
  return (
    <RBInputGroup.Text
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBInputGroup.Text>
  );
}

InputGroupText.propTypes = {
  /**
   * The children of this InputGroupText.
   */
  children: PropTypes.node,

  /**
   * The ID of the InputGroupText.
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the InputGroupText.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the InputGroupText
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
   * Additional CSS classes to apply to the InputGroupText
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default InputGroupText;
