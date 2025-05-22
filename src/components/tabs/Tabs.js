import React, {useEffect} from 'react';

import classnames from 'classnames';
import PropTypes from 'prop-types';
import RBNav from 'react-bootstrap/Nav';
import RBTab from 'react-bootstrap/Tab';

import {getLoadingState} from '../../private/util';
import {
  parseChildrenToArray,
  resolveChildProps,
  stringifyId
} from '../../private/util';

// eslint-disable-next-line react/prop-types
function TabPane({children, tabId, ...otherProps}) {
  return (
    <RBTab.Pane
      eventKey={tabId}
      key={tabId}
      data-dash-is-loading={getLoadingState() || undefined}
      {...otherProps}
    >
      {children}
    </RBTab.Pane>
  );
}

/**
 * Create Bootstrap styled tabs. Use the `active_tab` property to set, or get the
 * currently active tab in a callback.
 */
function Tabs({
  children,
  id,
  active_tab,
  style,
  class_name,
  key,
  className,
  setProps
}) {
  children = parseChildrenToArray(children);

  // if active_tab not set initially, choose first tab
  useEffect(() => {
    if (setProps && active_tab === undefined) {
      setProps({
        active_tab:
          children && (resolveChildProps(children[0]).tab_id || 'tab-0')
      });
    }
  }, []);

  const toggle = tab => {
    if (setProps) {
      if (active_tab !== tab) {
        setProps({active_tab: tab});
      }
    }
  };

  // create tab links by extracting labels from children
  const links =
    children &&
    children.map((child, idx) => {
      const childProps = resolveChildProps(child);
      const tabId = childProps.key || childProps.tab_id || 'tab-' + idx;
      const active = active_tab === tabId;
      return (
        <RBNav.Item
          id={stringifyId(childProps.id)}
          key={tabId}
          style={
            active
              ? {...childProps.tab_style, ...childProps.active_tab_style}
              : childProps.tab_style
          }
          className={classnames(
            childProps.tab_class_name || childProps.tabClassName,
            active &&
              (childProps.active_tab_class_name ||
                childProps.activeTabClassName)
          )}
        >
          <RBNav.Link
            className={classnames(
              childProps.label_class_name || childProps.labelClassName,
              active &&
                (childProps.active_label_class_name ||
                  childProps.activeLabelClassName),
              {active}
            )}
            style={{
              ...(!childProps.disabled && {cursor: 'pointer'}),
              ...childProps.label_style,
              ...(active && childProps.active_label_style)
            }}
            disabled={childProps.disabled}
            onClick={() => {
              if (!childProps.disabled) {
                toggle(tabId);
              }
            }}
          >
            {childProps.label}
          </RBNav.Link>
        </RBNav.Item>
      );
    });

  // create tab content by extracting children from children
  const tabs =
    children &&
    children.map((child, idx) => {
      const {
        style,
        className,
        class_name,
        tab_id,
        disabled = false
      } = resolveChildProps(child);
      const tabId = tab_id || 'tab-' + idx;

      return (
        <TabPane
          key={tabId}
          disabled={disabled}
          style={style}
          className={class_name || className}
          tabId={tabId}
        >
          {child}
        </TabPane>
      );
    });
  return (
    <RBTab.Container
      key={key}
      activeKey={active_tab}
      onSelect={id => setProps({active_tab: id})}
      data-dash-is-loading={getLoadingState() || undefined}
    >
      <RBNav
        id={id}
        variant="tabs"
        as="ul"
        className={class_name || className}
        style={style}
      >
        {links}
      </RBNav>
      <RBTab.Content>{tabs}</RBTab.Content>
    </RBTab.Container>
  );
}

Tabs.dashPersistence = {
  persisted_props: ['active_tab'],
  persistence_type: 'local'
};

// Make sure that updates to the Tabs children are properly rendered
// See https://github.com/dbc-team/dash-bootstrap-components/issues/1119
Tabs.dashChildrenUpdate = true;

Tabs.propTypes = {
  /**
   * The children of this Tabs component. Each child should be a Tab component.
   */
  children: PropTypes.node,

  /**
   * The ID of the Tabs.
   */
  id: PropTypes.string,

  /**
   * The tab_id of the currently active tab. If tab_id has not been specified
   * for the active tab, this will default to tab-i, where i is the index
   * (starting from 0) of the tab.
   */
  active_tab: PropTypes.string,

  /**
   * Additional inline CSS styles to apply to the Tabs.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Tabs.
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
   * Properties whose user interactions will persist after refreshing the
   * component or the page. Since only `active_tab` is allowed this prop can
   * normally be ignored.
   */
  persisted_props: PropTypes.arrayOf(PropTypes.oneOf(['active_tab'])),

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
   * Additional CSS classes to apply to the Tabs.
   */
  className: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Tabs;
