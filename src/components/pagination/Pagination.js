import React from 'react';

import PropTypes from 'prop-types';
import RBPagination from 'react-bootstrap/Pagination';

import {getLoadingState} from '../../private/util';

/**
 * The container for presentational components for building a pagination UI.
 * Individual pages should be added as children using the `PaginationItem`
 * component.
 */
function Pagination({
  class_name,
  active_page = 1,
  min_value = 1,
  max_value,
  step = 1,
  fully_expanded = true,
  previous_next = false,
  first_last = false,
  className,
  setProps,
  ...otherProps
}) {
  // Check max_value is correct value re. step size and if not, change it
  // i.e. min = 1, step = 2, max_value = 4 doesn't work, so need max_value = 5
  if ((max_value - min_value) % step !== 0) {
    max_value = max_value + step - ((max_value - min_value) % step);
  }

  // Function to set the active page
  const setActivePage = value => {
    if (setProps) {
      setProps({active_page: value});
    }
  };

  // Generator for the numbered pages
  const getPaginationItem = i => {
    return (
      <RBPagination.Item
        key={i}
        active={i === active_page}
        onClick={() => setActivePage(i)}
      >
        {i}
      </RBPagination.Item>
    );
  };

  let paginationItems = [];

  // Add the 'first' button if specified
  if (first_last) {
    paginationItems.push(
      <RBPagination.First
        key={'first'}
        disabled={active_page === min_value}
        onClick={() => setActivePage(min_value)}
      />
    );
  }

  // Add a 'previous' button if specified
  if (previous_next) {
    paginationItems.push(
      <RBPagination.Prev
        key={'previous'}
        disabled={active_page === min_value}
        onClick={() => setActivePage(active_page - step)}
      />
    );
  }
  // Add the main number block in the middle
  // As we have a minimum of 5 blocks i.e. 1 ... active ... max there is no
  // point in not fully expanding it if there are less than 5 blocks required
  if (fully_expanded || Math.floor((max_value - min_value) / step) + 1 <= 7) {
    for (let i = min_value; i <= max_value; i = i + step) {
      paginationItems.push(getPaginationItem(i));
    }
  } else {
    // If it's not fully expanded, need to create the right blocks
    paginationItems.push(getPaginationItem(min_value));
    if (active_page <= min_value + step * 3) {
      // If in the first 4 blocks, needs to be in the pattern 1, 2, 3, 4, 5, ..., 10
      paginationItems.push(getPaginationItem(min_value + step));
      paginationItems.push(getPaginationItem(min_value + step * 2));
      paginationItems.push(getPaginationItem(min_value + step * 3));
      paginationItems.push(getPaginationItem(min_value + step * 4));
      paginationItems.push(
        <RBPagination.Ellipsis disabled={true} key={'ellipsis'} />
      );
    } else if (active_page >= max_value - step * 3) {
      // If in the last 2 blocks, needs to be in the pattern 1, ..., 8, 9, 10
      paginationItems.push(
        <RBPagination.Ellipsis disabled={true} key={'ellipsis'} />
      );
      paginationItems.push(getPaginationItem(max_value - step * 4));
      paginationItems.push(getPaginationItem(max_value - step * 3));
      paginationItems.push(getPaginationItem(max_value - step * 2));
      paginationItems.push(getPaginationItem(max_value - step));
    } else {
      // Otherwise, needs to be in the pattern 1, ..., 5, ..., 10
      paginationItems.push(
        <RBPagination.Ellipsis disabled={true} key={'ellipsis-1'} />
      );
      paginationItems.push(getPaginationItem(active_page - step));
      paginationItems.push(getPaginationItem(active_page));
      paginationItems.push(getPaginationItem(active_page + step));
      paginationItems.push(
        <RBPagination.Ellipsis disabled={true} key={'ellipsis-2'} />
      );
    }
    // Add the biggest number
    paginationItems.push(getPaginationItem(max_value));
  }
  // Add the 'next' button if specified
  if (previous_next) {
    paginationItems.push(
      <RBPagination.Next
        key={'next'}
        disabled={active_page === max_value}
        onClick={() => setActivePage(active_page + step)}
      />
    );
  }

  // Add the 'last' button if specified
  if (first_last) {
    paginationItems.push(
      <RBPagination.Last
        key={'last'}
        disabled={active_page === max_value}
        onClick={() => setActivePage(max_value)}
      />
    );
  }

  // Create the pagination component
  return (
    <RBPagination
      className={class_name || className}
      data-dash-is-loading={getLoadingState() || undefined}
      {...otherProps}
    >
      {paginationItems}
    </RBPagination>
  );
}

Pagination.propTypes = {
  /**
   * The ID of the Pagination
   */
  id: PropTypes.string,

  /**
   * The currently active page
   */
  active_page: PropTypes.number,

  /**
   * Minimum (leftmost) value to appear in the pagination.
   */
  min_value: PropTypes.number,

  /**
   * Maximum (rightmost) value to appear in the pagination. Must be defined.
   * If the `min_value` and `step` together cannot reach this value, then the
   * next stepped value is used as the maximum.
   */
  max_value: PropTypes.number.isRequired,

  /**
   * Page increment step.
   */
  step: PropTypes.number,

  /**
   * Set the size of all page items in the Pagination.
   */
  size: PropTypes.oneOf(['sm', 'lg']),

  /**
   * When True, this will display all numbers between `min_value` and `max_value`.
   */
  fully_expanded: PropTypes.bool,

  /**
   * When True, this will display a previous and next icon before and after the
   * individual page numbers.
   */
  previous_next: PropTypes.bool,

  /**
   * When True, this will display a first and last icon at the beginning and end of the
   * Pagination.
   */
  first_last: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the Pagination.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Pagination.
   */
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the Pagination.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the input changes.
   */
  setProps: PropTypes.func
};

export default Pagination;
