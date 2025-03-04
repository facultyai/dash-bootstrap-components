import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBRow from 'react-bootstrap/Row';

import {getLoadingState} from '../../private/util';

const alignMap = {
  start: 'align-items-start',
  center: 'align-items-center',
  end: 'align-items-end',
  stretch: 'align-items-stretch',
  baseline: 'align-items-baseline'
};

const justifyMap = {
  start: 'justify-content-start',
  center: 'justify-content-center',
  end: 'justify-content-end',
  around: 'justify-content-around',
  between: 'justify-content-between',
  evenly: 'justify-content-evenly'
};

/**
 * Row is one of the core layout components in Bootstrap. Build up your layout as a
 * series of rows of columns. Row has arguments for controlling the vertical and
 * horizontal alignment of its children, as well as the spacing between columns.
 */
function Row({children, class_name, align, justify, className, ...otherProps}) {
  const alignClass = align && alignMap[align];
  const justifyClass = justify && justifyMap[justify];

  const classes = classNames(class_name || className, alignClass, justifyClass);
  return (
    <RBRow
      className={classes}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBRow>
  );
}

Row.propTypes = {
  /**
   * The children of the Row.
   */
  children: PropTypes.node,

  /**
   * The ID of the Row.
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the Row.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Row.
   */
  class_name: PropTypes.string,

  /**
   * Set vertical alignment of columns in this row. Options are 'start',
   * 'center', 'end', 'stretch' and 'baseline'.
   */
  align: PropTypes.oneOf(['start', 'center', 'end', 'stretch', 'baseline']),

  /**
   * Set horizontal spacing and alignment of columns in this row. Options are 'start',
   * 'center', 'end', 'around' and 'between'.
   */
  justify: PropTypes.oneOf([
    'start',
    'center',
    'end',
    'around',
    'between',
    'evenly'
  ]),

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
   * Additional CSS classes to apply to the Row.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Row;
