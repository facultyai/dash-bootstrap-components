import React, {useContext} from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBAccordion from 'react-bootstrap/Accordion';

import {AccordionContext} from '../../private/AccordionContext';
import {getLoadingState, stringifyId} from '../../private/util';

/**
 * A component to build up the children of the accordion.
 */
function AccordionItem({
  children,
  id,
  title,
  item_id,
  class_name,
  className,
  ...otherProps
}) {
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
      data-dash-is-loading={getLoadingState() || undefined}
    >
      <RBAccordion.Header onClick={() => toggle(itemID)}>
        {title}
      </RBAccordion.Header>
      <RBAccordion.Body>{children}</RBAccordion.Body>
    </RBAccordion.Item>
  );
}

AccordionItem.propTypes = {
  /**
   * The ID of the AccordionItem.
   */
  id: PropTypes.string,

  /**
   * The children of the AccordionItem.
   */
  children: PropTypes.node,

  /**
   * Text to display in the header of the AccordionItem.
   */
  title: PropTypes.node,

  /**
   * Optional identifier for item used for determining which item is visible if not
   * specified, and AccordionItem is being used inside Accordion component, the item_id
   * will be set to "item-i" where i is (zero indexed) position of item in list items
   * passed to Accordion component.
   */
  item_id: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the AccordionItem.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the AccordionItem.
   */
  class_name: PropTypes.string,

  /**
   * **DEPRECATED** Use `class_name` instead.
   *
   * Additional CSS classes to apply to the AccordionItem.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default AccordionItem;
