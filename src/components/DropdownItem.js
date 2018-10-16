import React from 'react';
import PropTypes from 'prop-types';
import {DropdownItem as RSDropdownItem} from 'reactstrap';
import Link from '../private/Link';
import Button from './Button';

class DropdownItem extends React.Component {
  constructor(props) {
    super(props);

    this.incrementClicks = this.incrementClicks.bind(this);
  }

  incrementClicks() {
    if (!this.props.disabled) {
      if (this.props.setProps) {
        this.props.setProps({
          n_clicks: this.props.n_clicks + 1,
          n_clicks_timestamp: Date.now()
        });
      }
    }
  }

  render() {
    let {
      children,
      href,
      ...otherProps
    } = this.props;
    otherProps[href ? "preOnClick" : "onClick"] = this.incrementClicks;
    return (
      <RSDropdownItem
      tag={href ? Link : 'button'}
      href={href}
      {...otherProps}>
        {children}
      </RSDropdownItem>
    );
  }
}

DropdownItem.propTypes = {
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
   * Set active CSS style
   */
  active: PropTypes.bool,

  /**
   * Set disabled CSS style
   */
  disabled: PropTypes.bool,

  /**
   * Create menu divider
   */
  divider: PropTypes.bool,

  /**
   * Create menu header
   */
  header: PropTypes.bool,

  /**
   * Link for the menu item
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
  n_clicks_timestamp: PropTypes.number
};

DropdownItem.defaultProps = {
  n_clicks: 0,
  n_clicks_timestamp: -1
};

export default DropdownItem;
