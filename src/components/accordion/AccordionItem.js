import React from 'react';
import PropTypes from 'prop-types';

/**
 * A component to build up the children of the accordion.
 */
const AccordionItem = props => {
  return <>{props.children}</>;
};

AccordionItem.propTypes = {
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
   * The title on display in the collapsed accordion item.
   */
  title: PropTypes.string,

  /**
   * Optional identifier for item used for determining which item is visible
   * if not specified, and AccordionItem is being used inside Accordion component, the itemId
   * will be set to "item-i" where i is (zero indexed) position of item in list
   * items pased to Accordion component.
   */
  item_id: PropTypes.string,

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

export default AccordionItem;
