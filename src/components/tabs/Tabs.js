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

    if (!this.props.activeTab) {
      const activeTab = children[0].props.children.props.tabId || 'tab-0';
      this.state = {
        activeTab: activeTab
      };
      if (this.props.setProps) {
        this.props.setProps({
          activeTab: activeTab
        });
      }
    } else {
      this.state = {
        activeTab: this.props.activeTab
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
        this.props.setProps({activeTab: tab});
      }
    }
  }

  render() {
    // ensure children is array of children
    const children = this.parseChildrenToArray();

    // create tab links by extracting labels from children
    const links = children.map((child, idx) => {
      child = child.props.children;
      const tabId = child.props.tabId || 'tab-' + idx;
      return (
        <NavItem key={tabId}>
          <NavLink
            className={classnames({
              active: this.state.activeTab === tabId
            })}
            onClick={() => {
              this.toggle(tabId);
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
      const {children, tabId: tempTabId, label, ...otherProps} = child.props;
      const tabId = tempTabId || 'tab-' + idx;
      return (
        <TabPane tabId={tabId} key={tabId} {...otherProps}>
          {children}
        </TabPane>
      );
    });
    return (
      <div>
        <Nav tabs={true}>{links}</Nav>
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
   * Determine which tab is currently showing. Will be the id of the tab or
   * 'tab-i' where i is the index of the tab (indexed from zero)
   */
  activeTab: PropTypes.string
};

export default Tabs;
