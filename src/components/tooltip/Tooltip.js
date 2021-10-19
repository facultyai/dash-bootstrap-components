import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import RBTooltip from 'react-bootstrap/Tooltip';

import Overlay from '../../private/Overlay';

/**
 * A component for adding tooltips to any element, no callbacks required!
 *
 * Simply add the Tooltip to you layout, and give it a target (id of a
 * component to which the tooltip should be attached)
 */

const Tooltip = props => {
  const {
    id,
    children,
    loading_state,
    className,
    class_name,
    style,
    ...otherProps
  } = props;

  return (
    <Overlay
      data-dash-is-loading={
        (loading_state && loading_state.is_loading) || undefined
      }
      {...omit(['setProps'], otherProps)}
      trigger="hover focus"
    >
      <RBTooltip style={style} className={class_name || className}>
        {children}
      </RBTooltip>
    </Overlay>
  );
};

Tooltip.defaultProps = {
  delay: {show: 0, hide: 50},
  placement: 'auto',
  flip: true
};

Tooltip.propTypes = {
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
   * The id of the element to attach the tooltip to
   */
  target: PropTypes.oneOfType([PropTypes.string, PropTypes.object]),

  /**
   * How to place the tooltip.
   */
  placement: PropTypes.oneOf([
    'auto',
    'auto-start',
    'auto-end',
    'top',
    'top-start',
    'top-end',
    'right',
    'right-start',
    'right-end',
    'bottom',
    'bottom-start',
    'bottom-end',
    'left',
    'left-start',
    'left-end'
  ]),

  /**
   * Whether to flip the direction of the popover if too close to the container
   * edge, default True.
   */
  flip: PropTypes.bool,

  /**
   * Control the delay of hide and show events.
   */
  delay: PropTypes.shape({show: PropTypes.number, hide: PropTypes.number}),

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

export default Tooltip;
