import React, {useContext} from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBAccordion from 'react-bootstrap/Accordion';

import {stringifyId} from '../../private/util';
import {AccordionContext} from '../../private/AccordionContext';

/**
 * A component to build up the children of the accordion.
 */
const AccordionItem = ({
  title,
  item_id,
  loading_state,
  class_name,
  className,
  id,
  children,
  ...otherProps
}) => {
  const {toggle, idx} = useContext(AccordionContext);
  const itemID = item_id || `item-${idx}`;
  return (
    <RBAccordion.Item
      id={stringifyId(id)}
      key={itemID}
      eventKey={itemID}
      className={class_name || className}
      {...omit(
        ['setProps', 'persistence', 'persistence_type', 'persisted_props'],
        otherProps
      )}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
    >
      <RBAccordion.Header
        onClick={() => {
          toggle(itemID);
        }}
      >
        {title}
      </RBAccordion.Header>
      <RBAccordion.Body>{children}</RBAccordion.Body>
    </RBAccordion.Item>
  );
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
  title: PropTypes.node,

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
