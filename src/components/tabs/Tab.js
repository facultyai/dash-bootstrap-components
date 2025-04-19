import React from 'react';

import PropTypes from 'prop-types';

/**
 * Create a single tab. Should be used as a component of Tabs.
 */
function Tab(props) {
  return <div>{props.children}</div>;
}

Tab.propTypes = {
  /**
   * The children of this Tab.
   */
  children: PropTypes.node,

  /**
   * The ID of the Tab.
   */
  id: PropTypes.string,

  /**
   * The tab's label, displayed in the tab itself.
   */
  label: PropTypes.string,

  /**
   * Optional identifier for tab used for determining which tab is visible
   * if not specified, and Tab is being used inside Tabs component, the tabId
   * will be set to "tab-i" where i is (zero indexed) position of tab in list
   * tabs pased to Tabs component.
   */
  tab_id: PropTypes.string,

  /**
   * Determines if Tab is disabled or not - defaults to false
   */
  disabled: PropTypes.bool,

  /**
   * Defines CSS styles which will override styles previously set. The styles
   * set here apply to the content of the Tab
   */
  style: PropTypes.object,

  /**
   * Defines CSS styles which will override styles previously set. The styles
   * set here apply to the NavItem in the tab.
   */
  tab_style: PropTypes.object,

  /**
   * Defines CSS styles which will override styles previously set. The styles
   * set here apply to the NavItem in the tab when it is active.
   */
  active_tab_style: PropTypes.object,

  /**
   * Defines CSS styles which will override styles previously set. The styles
   * set here apply to the NavLink in the tab.
   */
  label_style: PropTypes.object,

  /**
   * Defines CSS styles which will override styles previously set. The styles
   * set here apply to the NavLink in the tab when it is active
   */
  active_label_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the Tabs.
   */
  class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to the Tabs. The classes
   * specified with this prop will be applied to the NavItem in the tab.
   */
  tab_class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to the Tabs. The classes
   * specified with this prop will be applied to the NavItem in the tab when it
   * is active.
   */
  active_tab_class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to the Tabs. The classes
   * specified with this prop will be applied to the NavLink in the tab.
   */
  label_class_name: PropTypes.string,

  /**
   * Additional CSS classes to apply to the Tabs. The classes
   * specified with this prop will be applied to the NavLink in the tab when
   * it is active.
   */
  active_label_class_name: PropTypes.string,

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
   * **DEPRECATED** Use `tab_class_name` instead.
   *
   * Additional CSS classes to apply to the Tabs. The classes
   * specified with this prop will be applied to the NavItem in the tab.
   */
  tabClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `active_tab_class_name` instead.
   *
   * Additional CSS classes to apply to the Tabs. The classes
   * specified with this prop will be applied to the NavItem in the tab when it
   * is active.
   */
  activeTabClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `label_class_name` instead.
   *
   * Additional CSS classes to apply to the Tabs. The classes
   * specified with this prop will be applied to the NavLink in the tab.
   */
  labelClassName: PropTypes.string,

  /**
   * **DEPRECATED** Use `active_label_class_name` instead.
   *
   * Additional CSS classes to apply to the Tabs. The classes
   * specified with this prop will be applied to the NavLink in the tab when
   * it is active.
   */
  activeLabelClassName: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default Tab;
