import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBModalTitle from 'react-bootstrap/ModalTitle';

/**
 * Add a title to any modal. Should be used as a child of the ModalHeader.
 */
const ModalTitle = props => {
  const {children, loading_state, className, class_name, tag, ...otherProps} =
    props;
  return (
    <RBModalTitle
      as={tag}
      className={class_name || className}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
      {...omit(['setProps'], otherProps)}
    >
      {children}
    </RBModalTitle>
  );
};

ModalTitle.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component
   */
  children: PropTypes.node,
  /**
   * Defines CSS styles which will override styles previously set.
   */
  style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties.
   */
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Often used with CSS to style elements with common properties.
   */
  className: PropTypes.string,

  /**
   * HTML tag to use for the ModalTitle, default: div
   */
  tag: PropTypes.string,

  /**
   * Object that holds the loading state object coming from dash-renderer
   */
  loading_state: PropTypes.shape({
    /**
     * Determines if the component is loading or not
     */
    is_loading: PropTypes.bool,
    /**
     * Holds which property is loading
     */
    prop_name: PropTypes.string,
    /**
     * Holds the name of the component that is loading
     */
    component_name: PropTypes.string
  })
};

export default ModalTitle;
