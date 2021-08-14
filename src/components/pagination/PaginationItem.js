import React from 'react';
import PropTypes from 'prop-types';
import {default as RBPagination} from 'react-bootstrap/Pagination';

/**
 * A set of presentational components for building a pagination UI. This should
 * be used alongside the `Pagination` component.
 */
const PaginationItem = props => {
  const {
    setProps,
    n_clicks,
    href,
    disabled,
    item_title,
    predefined_type,
    ...otherProps
  } = props;

  const incrementClicks = () => {
    if (!disabled && setProps) {
      setProps({
        n_clicks: n_clicks + 1
      });
    }
  };

  href
    ? (otherProps['href'] = href)
    : (otherProps['onClick'] = incrementClicks);

  switch (predefined_type) {
    case 'first':
      return <RBPagination.First disabled={disabled} {...otherProps} />;
    case 'previous':
      return <RBPagination.Previous disabled={disabled} {...otherProps} />;
    case 'next':
      return <RBPagination.Next disabled={disabled} {...otherProps} />;
    case 'last':
      return <RBPagination.Last disabled={disabled} {...otherProps} />;
    case 'ellipsis':
      return <RBPagination.Ellipsis disabled={disabled} {...otherProps} />;
    default:
      return (
        <RBPagination.Item disabled={disabled} {...otherProps}>
          {item_title}
        </RBPagination.Item>
      );
  }
};

PaginationItem.defaultProps = {
  n_clicks: 0
};

PaginationItem.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * Often used with CSS to style elements with common properties.
   */
  class_name: PropTypes.string,

  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * What to display on the pagination button - this is overwritten when
   * `predefined_type` is used.
   */
  item_title: PropTypes.string,

  /**
   * Choose a predetermined button type including First, Previous, Next, Last
   * or an Ellipsis for indicating previous or continuing results.
   */
  predefined_type: PropTypes.oneOf([
    'first',
    'previous',
    'next',
    'last',
    'ellipsis'
  ]),

  /**
   * Styles the item as active, and renders a <span> instead of an <a>.
   */
  active: PropTypes.bool,

  /**
   * Disables the item
   */
  disabled: PropTypes.bool,

  /**
   * An integer that represents the number of times
   * that this element has been clicked on. Overriden by the use of `href`
   */
  n_clicks: PropTypes.number,

  /**
   * Pass a URL (relative or absolute) for the item. Overrides the default
   * increment behaviour of `n_clicks`.
   */
  href: PropTypes.string
};

export default PaginationItem;
