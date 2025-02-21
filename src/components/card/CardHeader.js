import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCardHeader from 'react-bootstrap/CardHeader';

import {getLoadingState} from '../../private/util';

/**
 * Use the CardHeader component to add a header to any card.
 */
function CardHeader({children, class_name, className, ...otherProps}) {
  return (
    <RBCardHeader
      data-dash-is-loading={getLoadingState() || undefined}
      className={class_name || className}
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBCardHeader>
  );
}

CardHeader.propTypes = {
  /**
   * The children of this CardHeader
   */
  children: PropTypes.node,

  /**
   * The ID of the CardHeader
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the CardHeader.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the CardHeader
   */
  class_name: PropTypes.string,

  /**
   * HTML tag to use for the card header, default: div
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
   * Additional CSS classes to apply to the CardHeader
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default CardHeader;
