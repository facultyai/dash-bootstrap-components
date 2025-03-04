import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCard from 'react-bootstrap/Card';

import {getLoadingState} from '../../private/util';

/**
 * Wrap the content of your `Card` in `CardBody` to apply padding and other styles.
 */
function CardBody({children, class_name, className, ...otherProps}) {
  return (
    <RBCard.Body
      data-dash-is-loading={getLoadingState() || undefined}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBCard.Body>
  );
}

CardBody.propTypes = {
  /**
   * The children of this CardBody
   */
  children: PropTypes.node,

  /**
   * The ID of the CardBody
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the CardBody.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the CardBody
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the CardBody, default: div
   */
  tag: PropTypes.string,

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
   * Additional CSS classes to apply to the CardBody
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default CardBody;
