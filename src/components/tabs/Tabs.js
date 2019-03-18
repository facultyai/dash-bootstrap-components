import React from 'react';
import PropTypes from 'prop-types';
import classnames from 'classnames';
import {Nav, NavItem, NavLink, TabContent, TabPane} from 'reactstrap';

class Tabs extends React.Component {
  constructor(props) {
    super(props);

    this.toggle = this.toggle.bind(this);
    this.parseChildrenToArray = this.parseChildrenToArray.bind(this);

    const children = this.parseChildrenToArray();

    if (!this.props.active_tab) {
      const activeTab = children[0].props.children.props.tab_id || 'tab-0';
      this.state = {
        activeTab: activeTab
      };
      if (this.props.setProps) {
        this.props.setProps({
          active_tab: activeTab
        });
      }
    } else {
      this.state = {
        activeTab: this.props.active_tab
      };
    }
  }

  parseChildrenToArray() {
    if (this.props.children && !Array.isArray(this.props.children)) {
      // if dcc.Tabs.children contains just one single element, it gets passed as an object
      // instead of an array - so we put in in a array ourselves!
      return [this.props.children];
    }
    return this.props.children;
  }

  toggle(tab) {
    if (this.state.activeTab !== tab) {
      this.setState({activeTab: tab});
      if (this.props.setProps) {
        this.props.setProps({active_tab: tab});
      }
    }
  }

  render() {
    // ensure children is array of children
    const children = this.parseChildrenToArray();

    // create tab links by extracting labels from children
    const links = children.map((child, idx) => {
      child = child.props.children;
      const tabId = child.props.key || child.props.tab_id || 'tab-' + idx;
      return (
        <NavItem key={tabId} style={child.props.tab_style}>
          <NavLink
            className={classnames({
              active: this.state.activeTab === tabId
            })}
            style={child.props.label_style}
            disabled={child.props.disabled}
            onClick={() => {
              if (!child.props.disabled) {
                this.toggle(tabId);
              }
            }}
          >
            {child.props.label}
          </NavLink>
        </NavItem>
      );
    });

    // create tab content by extracting children from children
    const tabs = children.map((child, idx) => {
      child = child.props.children;
      const {children, tab_id, label, tab_style, label_style, ...otherProps} = child.props;
      const tabId = tab_id || 'tab-' + idx;
      return (
        <TabPane tabId={tabId} key={tabId} {...otherProps}>
          {children}
        </TabPane>
      );
    });
    return (
      <div key={this.props.key}>
        <Nav
          id={this.props.id}
          tabs={true}
          card={this.props.card}
          className={this.props.className}
          style={this.props.style}
        >
          {links}
        </Nav>
        <TabContent activeTab={this.state.activeTab}>{tabs}</TabContent>
      </div>
    );
  }
}

Tabs.propTypes = {
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
  className: PropTypes.string,

  /**
   * A unique identifier for the component, used to improve
   * performance by React.js while rendering components
   * See https://reactjs.org/docs/lists-and-keys.html for more info
   */
  key: PropTypes.string,

  /**
   * Determine which tab is currently showing. Will be the id of the tab or
   * 'tab-i' where i is the index of the tab (indexed from zero)
   */
  active_tab: PropTypes.string,

  /**
   * Set to True if using tabs inside a CardHeader.
   */
  card: PropTypes.bool
};

export default Tabs;
