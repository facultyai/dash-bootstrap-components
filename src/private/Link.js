/* global window:true */

import isAbsoluteUrl from 'is-absolute-url';

import PropTypes from 'prop-types';
import React, {Component} from 'react';

/* event polyfill for IE https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent/CustomEvent */
function CustomEvent(event, params) {
  // eslint-disable-next-line no-param-reassign
  params = params || {
    bubbles: false,
    cancelable: false,
    // eslint-disable-next-line no-undefined
    detail: undefined
  };
  const evt = document.createEvent('CustomEvent');
  evt.initCustomEvent(event, params.bubbles, params.cancelable, params.detail);
  return evt;
}
CustomEvent.prototype = window.Event.prototype;

function isExternalLink(external_link, href) {
  if (typeof external_link === 'undefined' || external_link === null) {
    return isAbsoluteUrl(href);
  }
  return external_link;
}

class Link extends Component {
  /**
   * This component can be used either as a dash-core-components style link or
   * as a styled HTML anchor
   */
  constructor(props) {
    super(props);
    this.updateLocation = this.updateLocation.bind(this);
  }

  updateLocation(e) {
    if (this.props.disabled) {
      e.preventDefault();
      return;
    }
    if (this.props.preOnClick) {
      this.props.preOnClick();
    }
    const {external_link, href} = this.props;
    if (!isExternalLink(external_link, href)) {
      // prevent anchor from updating location
      e.preventDefault();
      const {href} = this.props;
      window.history.pushState({}, '', href);
      window.dispatchEvent(new CustomEvent('onpushstate'));
      // scroll back to top
      window.scrollTo(0, 0);
    }
  }

  render() {
    const {children, external_link, preOnClick, ...otherProps} = this.props;
    /**
     * ideally, we would use cloneElement however
     * that doesn't work with dash's recursive
     * renderTree implementation for some reason
     */
    return (
      <a {...otherProps} onClick={e => this.updateLocation(e)}>
        {children}
      </a>
    );
  }
}

Link.propTypes = {
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
   * URL of the resource to link to
   */
  href: PropTypes.string,

  /**
   * If true, clicking on the link does nothing.
   */
  disabled: PropTypes.bool,

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
   * Function to be executed on click before the redirect logic of Link.
   */
  preOnClick: PropTypes.func
};

Link.defaultProps = {
  n_clicks: 0,
  n_clicks_timestamp: -1,
  disabled: false,
  external_link: null
};

export {Link as default, isExternalLink};
