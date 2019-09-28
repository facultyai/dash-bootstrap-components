import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {ListGroupItem as RSListGroupItem} from 'reactstrap';
import Link from '../../private/Link';

class ListGroupItem extends React.Component {
  constructor(props) {
    super(props);

    this.incrementClicks = this.incrementClicks.bind(this);
  }

  incrementClicks() {
    if (!this.props.disabled && this.props.setProps) {
      this.props.setProps({
        n_clicks: this.props.n_clicks + 1,
        n_clicks_timestamp: Date.now()
      });
    }
  }

  render() {
    let {children, loading_state, ...otherProps} = this.props;
    const useLink = this.props.href && !this.props.disabled;
    otherProps[useLink ? 'preOnClick' : 'onClick'] = this.incrementClicks;
    return (
      <RSListGroupItem
        tag={useLink ? Link : 'li'}
        {...omit(['setProps'], otherProps)}
        data-dash-is-loading={
          (loading_state && loading_state.is_loading) || undefined
        }
      >
        {children}
      </RSListGroupItem>
    );
  }
}

ListGroupItem.propTypes = {
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
   * HTML tag to use for the listgroupitem, default: li
   */
  tag: PropTypes.string,

  /**
   * Apply active style to item
   */
  active: PropTypes.bool,

  /**
   * Apply disabled style to item
   */
  disabled: PropTypes.bool,

  /**
   * Item color, options: primary, secondary, success, info, warning,
   * danger, default: secondary
   */
  color: PropTypes.string,

  /**
   * Apply list-group-item-action class for hover animation etc.
   */
  action: PropTypes.bool,

  /**
   * Pass a URL (relative or absolute) to make the list group item a link.
   */
  href: PropTypes.string,

  /**
   * If true, the browser will treat this as an external link,
   * forcing a page refresh at the new location. If false,
   * this just changes the location without triggering a page
   * refresh. Use this if you are observing dcc.Location, for
   * instance. Defaults to true for absolute URLs and false
   * otherwise.
   */
  external_link: PropTypes.bool,

  /**
   * An integer that represents the number of times
   * that this element has been clicked on.
   */
  n_clicks: PropTypes.number,

  /**
   * An integer that represents the time (in ms since 1970)
   * at which n_clicks changed. This can be used to tell
   * which button was changed most recently.
   */
  n_clicks_timestamp: PropTypes.number,

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

export default ListGroupItem;
