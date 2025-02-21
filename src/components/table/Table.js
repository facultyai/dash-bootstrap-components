import React from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBTable from 'react-bootstrap/Table';

import {getLoadingState} from '../../private/util';

/**
 * A component for applying Bootstrap styles to HTML tables. Use this as a drop-in
 * replacement for `html.Table`, or generate a table from a Pandas DataFrame using
 * `dbc.Table.from_dataframe`.
 */
function Table(props) {
  const {children, class_name, color, className, ...otherProps} = props;
  return (
    <RBTable
      className={class_name || className}
      variant={color}
      {...omit(['setProps'], otherProps)}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      {children}
    </RBTable>
  );
}

Table.propTypes = {
  /**
   * The children of this Table
   */
  children: PropTypes.node,

  /**
   * The ID of the Table
   */
  id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the Table.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Table.
   */
  class_name: PropTypes.string,

  /**
   * Specify table size, options: 'sm', 'md', 'lg'
   */
  size: PropTypes.string,

  /**
   * Apply the `table-bordered` class which adds borders on all sides of the
   * table and cells.
   */
  bordered: PropTypes.bool,

  /**
   * Apply the `table-borderless` class which removes all borders from the
   * table and cells.
   */
  borderless: PropTypes.bool,

  /**
   * Apply the `table-striped` class which applies 'zebra striping' to rows in
   * the table body.
   */
  striped: PropTypes.bool,

  /**
   * Table color, options: primary, secondary, success, info, warning, danger,
   * dark, light. Default: secondary.
   */
  color: PropTypes.string,

  /**
   * Apply the `table-hover` class which enables a hover state on table rows
   * within the table body.
   */
  hover: PropTypes.bool,

  /**
   * Set to True or one of the breakpoints 'sm', 'md', 'lg', 'xl' to make table
   * scroll horizontally at lower breakpoints.
   */
  responsive: PropTypes.oneOfType([PropTypes.bool, PropTypes.string]),

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
   * Additional CSS classes to apply to the Table.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Table;
