import React, {useEffect} from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBAccordion from 'react-bootstrap/Accordion';

import {parseChildrenToArray, resolveChildProps} from '../../private/util';

/**
 * A self contained Accordion component. Build up the children using the
 * AccordionItem component.
 */
const Accordion = props => {
  let {
    children,
    active_item,
    start_collapsed,
    loading_state,
    key,
    setProps,
    class_name,
    className,
    ...otherProps
  } = props;
  children = parseChildrenToArray(children);

  // if active_item not set initially, choose first item
  useEffect(() => {
    if (setProps && active_item === undefined && !start_collapsed) {
      setProps({
        active_item:
          children && (resolveChildProps(children[0]).item_id || 'item-0')
      });
    }
  }, []);

  const toggle = item => {
    if (setProps) {
      if (active_item !== item) {
        setProps({active_item: item});
      }
    }
  };

  const items =
    children &&
    children.map((child, idx) => {
      const childProps = resolveChildProps(child);
      const {
        children,
        title,
        item_id,
        loading_state,
        class_name,
        className,
        ...otherProps
      } = childProps;
      const itemID = item_id || 'item-' + idx;
      return (
        <RBAccordion.Item
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
            // .dbcd-main h2 has margins defined on it - we need to make
            // sure to overwrite them
            style={{marginTop: '0rem', marginBottom: '0rem'}}
          >
            {title}
          </RBAccordion.Header>
          <RBAccordion.Body>{child}</RBAccordion.Body>
        </RBAccordion.Item>
      );
    });
  return (
    <RBAccordion
      key={key}
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
      activeKey={active_item}
      defaultActiveKey={start_collapsed ? null : active_item}
      className={class_name || className}
      {...omit(
        ['setProps', 'persistence', 'persistence_type', 'persisted_props'],
        otherProps
      )}
    >
      {items}
    </RBAccordion>
  );
};

Accordion.defaultProps = {
  persisted_props: ['active_item'],
  persistence_type: 'local',
  start_collapsed: false
};

Accordion.propTypes = {
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
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Renders accordion edge-to-edge with its parent container
   */
  flush: PropTypes.bool,

  /**
   * The item_id of the currently active item. If item_id has not been specified
   * for the active item, this will default to item-i, where i is the index
   * (starting from 0) of the item.
   */
  active_item: PropTypes.string,

  /**
   * Set to True for all items to be collapsed initially.
   */
  start_collapsed: PropTypes.bool,

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
  }),

  /**
   * Used to allow user interactions in this component to be persisted when
   * the component - or the page - is refreshed. If `persisted` is truthy and
   * hasn't changed from its previous value, a `value` that the user has
   * changed while using the app will keep that change, as long as
   * the new `value` also matches what was given originally.
   * Used in conjunction with `persistence_type`.
   */
  persistence: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.string,
    PropTypes.number
  ]),

  /**
   * Properties whose user interactions will persist after refreshing the
   * component or the page. Since only `value` is allowed this prop can
   * normally be ignored.
   */
  persisted_props: PropTypes.arrayOf(PropTypes.oneOf(['active_item'])),

  /**
   * Where persisted user changes will be stored:
   * memory: only kept in memory, reset on page refresh.
   * local: window.localStorage, data is kept after the browser quit.
   * session: window.sessionStorage, data is cleared once the browser quit.
   */
  persistence_type: PropTypes.oneOf(['local', 'session', 'memory'])
};

export default Accordion;
