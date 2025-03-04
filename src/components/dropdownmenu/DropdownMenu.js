import React, {useState} from 'react';

import PropTypes from 'prop-types';
import {omit} from 'ramda';
import ButtonGroup from 'react-bootstrap/ButtonGroup';
import RBDropdown from 'react-bootstrap/Dropdown';
import Nav from 'react-bootstrap/Nav';

import {bootstrapColors} from '../../private/BootstrapColors';
import {DropdownMenuContext} from '../../private/DropdownMenuContext';
import DropdownToggle from '../../private/DropdownToggle';
import {getLoadingState} from '../../private/util';

/**
 * DropdownMenu creates an overlay useful for grouping together links and other
 * content to organise navigation or other interactive elements.
 */
function DropdownMenu({
  children,
  label,
  color,
  direction,
  size,
  disabled = false,
  class_name,
  align_end,
  in_navbar,
  nav,
  caret = true,
  menu_variant = 'light',
  group,
  toggle_style,
  toggle_class_name,
  className,
  toggleClassName,
  ...otherProps
}) {
  const [dropdownOpen, setDropdownOpen] = useState(false);
  const isBootstrapColor = bootstrapColors.has(color) || color === 'link';
  const toggle = () => {
    if (!disabled) {
      setDropdownOpen(!dropdownOpen);
    }
  };

  return (
    <DropdownMenuContext.Provider
      value={{
        toggle: toggle,
        isOpen: dropdownOpen
      }}
    >
      <RBDropdown
        as={nav ? Nav.Item : group ? ButtonGroup : undefined}
        show={dropdownOpen}
        disabled={disabled}
        navbar={in_navbar}
        className={class_name || className}
        drop={direction}
        onToggle={(show, event) => {
          if (!event || event.source !== 'select') {
            setDropdownOpen(show);
          }
        }}
        align={align_end ? 'end' : 'start'}
        {...omit(['setProps'], otherProps)}
        data-dash-is-loading={getLoadingState() || undefined}
      >
        <DropdownToggle
          caret={caret}
          as={nav ? Nav.Link : undefined}
          onClick={toggle}
          disabled={disabled}
          size={size}
          variant={isBootstrapColor ? color : undefined}
          style={
            !isBootstrapColor
              ? {backgroundColor: color, ...toggle_style}
              : toggle_style
          }
          className={toggle_class_name || toggleClassName}
        >
          {label}
        </DropdownToggle>
        <RBDropdown.Menu
          renderOnMount
          variant={menu_variant === 'dark' ? 'dark' : undefined}
        >
          {children}
        </RBDropdown.Menu>
      </RBDropdown>
    </DropdownMenuContext.Provider>
  );
}

DropdownMenu.propTypes = {
  /**
   * The children of the DropdownMenu.
   */
  children: PropTypes.node,

  /**
   * The ID of the DropdownMenu.
   */
  id: PropTypes.string,

  /**
   * Label for the DropdownMenu toggle.
   */
  label: PropTypes.node,

  /**
   * Set the color of the DropdownMenu toggle. Available options are: 'primary',
   * 'secondary', 'success', 'warning', 'danger', 'info', 'link' or any valid CSS color
   * of your choice (e.g. a hex code, a decimal code or a CSS color name).
   *
   * Default: 'primary'
   */
  color: PropTypes.string,

  /**
   * Direction in which to expand the DropdownMenu. Options are 'down', 'start', 'up'
   * and 'end'.
   *
   * Default: 'down'.
   */
  direction: PropTypes.oneOf(['down', 'start', 'up', 'end']),

  /**
   * Size of the DropdownMenu. 'sm' corresponds to small, 'md' to medium and 'lg' to
   * large.
   */
  size: PropTypes.oneOf(['sm', 'md', 'lg']),

  /**
   * Disable the dropdown.
   */
  disabled: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the DropdownMenu.
   */
  style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the DropdownMenu
   */
  class_name: PropTypes.string,

  /**
   * Align the DropdownMenu along the right side of its parent. Default: False.
   */
  align_end: PropTypes.bool,

  /**
   * Set this to True if the DropdownMenu is inside a navbar. Default: False.
   */
  in_navbar: PropTypes.bool,

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
   * Set `menu_variant="dark"` to create a dark-mode drop down instead.
   */
  menu_variant: PropTypes.oneOf(['light', 'dark']),

  /**
   * Set group to True if the DropdownMenu is inside a ButtonGroup.
   */
  group: PropTypes.bool,

  /**
   * Additional inline CSS styles to apply to the DropdownMenu toggle.
   */
  toggle_style: PropTypes.object,

  /**
   * Additional CSS classes to apply to the DropdownMenu.
   */
  toggle_class_name: PropTypes.string,

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
   * Additional CSS classes to apply to the DropdownMenu
   */
  className: PropTypes.string,

  /**
   * **DEPRECATED** Use `toggle_class_name` instead.
   *
   * Additional CSS classes to apply to the DropdownMenu The classes
   * specified with this prop will be applied to the DropdownMenu toggle.
   */
  toggleClassName: PropTypes.string,

  /**
   * Dash-assigned callback that gets fired when the value changes.
   */
  setProps: PropTypes.func
};

export default DropdownMenu;
