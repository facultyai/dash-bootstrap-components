import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import classNames from 'classnames';
import InputGroupText from './InputGroupText';

const InputGroupAddon = props => {
  const {children, loading_state, className, addon_type, ...otherProps} = props;
  const classes = classNames(className, 'input-group-' + addon_type);

  if (typeof children === 'string') {
    return (
      <div
        className={classes}
        {...omit(['setProps'], otherProps)}
        data-dash-is-loading={
          (loading_state && loading_state.is_loading) || undefined
        }
      >
        <InputGroupText children={children} />
      </div>
    );
  }

  return (
    <div className={classes} {...omit(['setProps'], otherProps)}>
      {children}
    </div>
  );
};

InputGroupAddon.propTypes = {
  /**
   * The ID of this component, used to identify dash components
   * in callbacks. The ID needs to be unique across all of the
   * components in an app.
   */
  id: PropTypes.string,

  /**
   * The children of this component.
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
   * Whether to prepend or append the addon. Options: 'prepend', or 'append'.
   */
  addon_type: PropTypes.oneOf(['prepend', 'append']),

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

export default InputGroupAddon;
