import React from 'react';
import PropTypes from 'prop-types';
import {DropdownToggle, DropdownMenu} from 'reactstrap';
import {Dropdown as RSDropdown} from 'reactstrap';

class Dropdown extends React.Component {
  constructor(props) {
    super(props);

    this.toggle = this.toggle.bind(this);
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

  render() {
    const {children, nav, label, disabled, caret, ...otherProps} = this.props;
    return (
      <RSDropdown
        isOpen={this.state.dropdownOpen}
        toggle={this.toggle}
        nav={nav}
        disabled={disabled}
        {...otherProps}
      >
        <DropdownToggle nav={nav} caret={caret} disabled={disabled}>
          {label}
        </DropdownToggle>
        <DropdownMenu>{this.props.children}</DropdownMenu>
      </RSDropdown>
    );
  }
}

Dropdown.defaultProps = {
  caret: true
};

Dropdown.propTypes = {
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
   * Label for the toggle
   */
  label: PropTypes.string,

  /**
   * Direction in which to expand the dropdown.
   */
  direction: PropTypes.oneOf(['up', 'down', 'left', 'right']),

  /**
   * For Dropdown usage inside a Navbar (disables popper)
   */
  inNavbar: PropTypes.bool,

  /**
   * Disable the dropdown.
   */
  disabled: PropTypes.bool,

  /**
   * For Dropdown usage inside a Nav
   */
  nav: PropTypes.bool,

  /**
   * Add caret to dropdown toggle
   */
  caret: PropTypes.bool
};

export default Dropdown;
