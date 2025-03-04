import React from 'react';

import classNames from 'classnames';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBCol from 'react-bootstrap/Col';

import {columnPropType} from '../../private/types';
import {getLoadingState} from '../../private/util';

const alignMap = {
  start: 'align-self-start',
  center: 'align-self-center',
  end: 'align-self-end',
  stretch: 'align-self-stretch',
  baseline: 'align-self-baseline'
};

/**
 * Col for creating Bootstrap columns to control the layout of your page.
 *
 * Use the width argument to specify width, or use the breakpoint arguments
 * (xs, sm, md, lg, xl) to control the width of the columns on different screen
 * sizes to achieve a responsive layout.
 */
function Col({
  children,
  align,
  class_name,
  width,
  xs,
  sm,
  md,
  lg,
  xl,
  xxl,
  className,
  ...otherProps
}) {
  [width, xs, sm, md, lg, xl, xxl].forEach(breakpoint => {
    if (typeof breakpoint === 'object' && breakpoint !== null) {
      breakpoint.span = breakpoint.size;
    }
  });

  const alignClass = align && alignMap[align];
  const classes = classNames(class_name || className, alignClass);

  return (
    <RBCol
      xs={xs || width}
      sm={sm}
      md={md}
      lg={lg}
      xl={xl}
      xxl={xxl}
      className={classes}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBCol>
  );
}

Col.propTypes = {
  /**
   * The children of this Col
   */
  children: PropTypes.node,

  /**
   * The ID of the Col
   */
  id: PropTypes.string,

  /**
   * Set vertical alignment of this column's content in the parent row. Options are
   * 'start', 'center', 'end', 'stretch', 'baseline'.
   */
  align: PropTypes.oneOf(['start', 'center', 'end', 'stretch', 'baseline']),

  /**
   * Additional inline CSS styles to apply to the Col.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Col
   */
  class_name: PropTypes.string,

  /**
   * Specify the width of the column. Behind the scenes this sets behaviour at the xs
   * breakpoint, and will be overriden if xs is specified.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for more
   * details.
   */
  width: columnPropType,

  /**
   * Specify column behaviour on an extra small screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for more
   * details.
   */
  xs: columnPropType,

  /**
   * Specify column behaviour on a small screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for more
   * details.
   */
  sm: columnPropType,

  /**
   * Specify column behaviour on a medium screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for more
   * details.
   */
  md: columnPropType,

  /**
   * Specify column behaviour on a large screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for more
   * details.
   */
  lg: columnPropType,

  /**
   * Specify column behaviour on an extra large screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for more
   * details.
   */
  xl: columnPropType,

  /**
   * Specify column behaviour on an extra extra large screen.
   *
   * Valid arguments are boolean, an integer in the range 1-12 inclusive, or a
   * dictionary with keys 'offset', 'order', 'size'. See the documentation for more
   * details.
   */
  xxl: columnPropType,

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
   * Additional CSS classes to apply to the Col
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Col;
