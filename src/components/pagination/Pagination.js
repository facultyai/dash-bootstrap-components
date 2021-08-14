import React from 'react';
import PropTypes from 'prop-types';
import {default as RBPagination} from 'react-bootstrap/Pagination';

/**
 * The container for presentational components for building a pagination UI.
 * Individual pages should be added as children using the `PaginationItem`
 * component.
 */
const Pagination = props => {
  const {children, ...otherProps} = props;

  return <RBPagination {...otherProps}>{children}</RBPagination>;
};

Pagination.propTypes = {
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
   * Often used with CSS to style elements with common properties.
   */
  class_name: PropTypes.string,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Set the size of all page items in the pagination
   */
  size: PropTypes.oneOf(['sm', 'lg'])
};

export default Pagination;
