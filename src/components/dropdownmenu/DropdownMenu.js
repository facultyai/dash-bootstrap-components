import React from 'react';
import PropTypes from 'prop-types';
import {omit} from 'ramda';
import {Dropdown, DropdownToggle} from 'reactstrap';
import {DropdownMenu as RSDropdownMenu} from 'reactstrap';
import {DropdownMenuContext} from './DropdownMenuContext';

class DropdownMenu extends React.Component {
  constructor(props) {
    super(props);

    this.toggle = this.toggle.bind(this);
    this.getContextValue = this.getContextValue.bind(this);

    this.state = {
      dropdownOpen: false
    };
  }

  toggle() {
    if (!this.props.disabled) {
      this.setState(prevState => ({
        dropdownOpen: !prevState.dropdownOpen
      }));
    }
  }

  getContextValue() {
    return {
      toggle: this.toggle,
      isOpen: this.state.dropdownOpen
    };
  }

  render() {
    const {
      children,
      nav,
      label,
      disabled,
      caret,
      in_navbar,
      addon_type,
      bs_size,
      right,
      loading_state,
      color,
      toggle_style,
      toggleClassName,
      ...otherProps
    } = this.props;
    return (
      <DropdownMenuContext.Provider value={this.getContextValue()}>
        <Dropdown
          isOpen={this.state.dropdownOpen}
          toggle={this.toggle}
          nav={nav}
          disabled={disabled}
          inNavbar={in_navbar}
          addonType={addon_type}
          size={bs_size}
          {...omit(['setProps'], otherProps)}
          data-dash-is-loading={
            (loading_state && loading_state.is_loading) || undefined
          }
        >
          <DropdownToggle
            nav={nav}
            caret={caret}
            disabled={disabled}
            color={color}
            style={toggle_style}
            className={toggleClassName}
          >
            {label}
          </DropdownToggle>
          <RSDropdownMenu right={right}>{this.props.children}</RSDropdownMenu>
        </Dropdown>
      </DropdownMenuContext.Provider>
    );
  }
}

DropdownMenu.defaultProps = {
  caret: true,
  disabled: false
};

DropdownMenu.propTypes = {
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
   * Label for the DropdownMenu toggle.
   */
  label: PropTypes.string,

  /**
   * Direction in which to expand the DropdownMenu. Default: 'down'.
   */
  direction: PropTypes.oneOf(['down', 'left', 'right', 'up']),

  /**
   * Align the DropdownMenu along the right side of its parent. Default: False.
   */
  right: PropTypes.bool,

  /**
   * Set this to True if the DropdownMenu is inside a navbar. Default: False.
   */
  in_navbar: PropTypes.bool,

  /**
   * Set this to 'prepend' or 'append' if the DropdownMenu is being used in an input group.
   */
  addon_type: PropTypes.oneOfType([
    PropTypes.bool,
    PropTypes.oneOf(['prepend', 'append'])
  ]),

  /**
   * Disable the dropdown.
   */
  disabled: PropTypes.bool,

  /**
   * Set this to True if the DropdownMenu is inside a nav for styling consistent
   * with other nav items. Default: False.
   */
  nav: PropTypes.bool,

  /**
   * Add a caret to the DropdownMenu toggle. Default: True.
   */
  caret: PropTypes.bool,

  /**
   * Set the color of the DropdownMenu toggle. Available options are: 'primary',
   * 'secondary', 'success', 'warning', 'danger', 'info', 'link'. Default: 'secondary'
   */
  color: PropTypes.string,

  /**
   * Defines CSS styles which will override styles previously set. The styles
   * set here apply to the DropdownMenu toggle.
   */
  toggle_style: PropTypes.object,

  /**
   * Often used with CSS to style elements with common properties. The classes
   * specified with this prop will be applied to the DropdownMenu toggle.
   */
  toggleClassName: PropTypes.string,

  /**
   * Size of the DropdownMenu. 'sm' corresponds to small, 'md' to medium
   * and 'lg' to large.
   */
  bs_size: PropTypes.oneOf(['sm', 'md', 'lg']),

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
   * Set group to True if the DropdownMenu is inside a ButtonGroup.
   */
  group: PropTypes.bool
};

export default DropdownMenu;
