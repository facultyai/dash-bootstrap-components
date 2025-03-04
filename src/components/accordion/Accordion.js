import React, {useEffect} from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBAccordion from 'react-bootstrap/Accordion';

import {AccordionContext} from '../../private/AccordionContext';
import {parseChildrenToArray, resolveChildProps} from '../../private/util';
import {getLoadingState} from '../../private/util';

/**
 * A self contained Accordion component. Build up the children using the
 * AccordionItem component.
 */
function Accordion({
  children,
  active_item,
  always_open = false,
  start_collapsed = false,
  class_name,
  className,
  key,
  setProps,
  ...otherProps
}) {
  children = parseChildrenToArray(children);

  useEffect(() => {
    if (setProps && active_item === undefined && !start_collapsed) {
      // if active_item not set initially, choose first item
      let firstItem =
        children && (resolveChildProps(children[0]).item_id || 'item-0');
      setProps({
        active_item: always_open ? [firstItem] : firstItem
      });
    }
  }, []);

  const toggle = item => {
    if (setProps) {
      let newActiveItem;
      if (always_open) {
        // If always_open is set, then active_item should be an array
        if (!Array.isArray(active_item)) {
          newActiveItem = [item];
        } else if (!active_item.includes(item)) {
          newActiveItem = [item, ...active_item];
        } else {
          newActiveItem = active_item.filter(a => a !== item);
        }
      } else {
        newActiveItem = active_item !== item ? item : null;
      }
      setProps({active_item: newActiveItem});
    }
  };

  const items =
    children &&
    children.map((child, idx) => {
      const childProps = resolveChildProps(child);
      const itemID = childProps.item_id || `item-${idx}`;
      return (
        <AccordionContext.Provider key={itemID} value={{toggle, idx}}>
          {child}
        </AccordionContext.Provider>
      );
    });

  return (
    <RBAccordion
      key={key}
      data-dash-is-loading={getLoadingState() || undefined}
      activeKey={active_item}
      defaultActiveKey={start_collapsed ? null : active_item}
      alwaysOpen={always_open}
      className={class_name || className}
      {...omit(
        ['setProps', 'persistence', 'persistence_type', 'persisted_props'],
        otherProps
      )}
    >
      {items}
    </RBAccordion>
  );
}

Accordion.dashPersistence = {
  persisted_props: ['active_item'],
  persistence_type: 'local'
};

Accordion.propTypes = {
  /**
   * The children of the Accordion.
   */
  children: PropTypes.node,

  /**
   * The ID of the Accordion.
   */
  id: PropTypes.string,

  /**
   * The item_id of the currently active item. If item_id has not been specified
   * for the active item, this will default to item-i, where i is the index
   * (starting from 0) of the item.
   *
   * If `always_open=True`, then active_item should be a list item_ids of all the
   * currently open AccordionItems
   */
  active_item: PropTypes.oneOfType([
    PropTypes.string,
    PropTypes.arrayOf(PropTypes.string)
  ]),

  /**
   * If True, multiple items can be expanded at once.
   */
  always_open: PropTypes.bool,

  /**
   * If True, all items will start collapsed.
   */
  start_collapsed: PropTypes.bool,

  /**
   * If True the Accordion will be rendered edge-to-edge within its parent container.
   */
  flush: PropTypes.bool,

  /**
   * Additional inline styles to apply to the Accordion
   */
  style: PropTypes.object,

  /**
   * Additional CSS class to apply to the Accordion.
   */
  class_name: PropTypes.string,

  /**
   * Used to allow user interactions to be persisted when the page is refreshed.
   * See https://dash.plotly.com/persistence for more details
   */
  persistence: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.string,
    PropTypes.number
  ]),

  /**
   * Properties to persist. Since only `active_item` is supported, this prop can
   * normally be ignored.
   */
  persisted_props: PropTypes.arrayOf(PropTypes.oneOf(['active_item'])),

  /**
   * Where persisted user changes will be stored:
   * - memory: only kept in memory, reset on page refresh.
   * - local: window.localStorage, data is kept after the browser quit.
   * - session: window.sessionStorage, data is cleared once the browser quit.
   */
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory']),

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
   * Additional CSS class to apply to the Accordion.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Accordion;
