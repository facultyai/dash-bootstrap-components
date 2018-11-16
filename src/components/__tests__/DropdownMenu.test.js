import React from 'react';
import {mount, shallow} from 'enzyme';
import {
  Dropdown as RSDropdown,
  DropdownToggle as RSDropdownToggle,
  DropdownMenu as RSDropdownMenu
} from 'reactstrap';
import DropdownMenu from '../DropdownMenu';
import DropdownMenuItem from '../DropdownMenuItem';

describe('Simple DropdownMenu', () => {
  let dropdownMenu;
  let rsDropdown;
  let rsDropdownToggle;
  let rsDropdownMenu;

  beforeAll(() => {
    dropdownMenu = shallow(
      <DropdownMenu label="Label">
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    )
    rsDropdown = dropdownMenu.find(RSDropdown);
    rsDropdownToggle = dropdownMenu.find(RSDropdownToggle);
    rsDropdownMenu = dropdownMenu.find(RSDropdownMenu);
  })

  it('should create a reacstrap Dropdown', () =>
    expect(rsDropdown).toHaveLength(1));

  it('should create a reactstrap toggle', () =>
    expect(rsDropdownToggle).toHaveLength(1));

  it('should create a reactstrap dropdown menu', () =>
    expect(rsDropdownMenu).toHaveLength(1));

  it('should set the caret option in the toggle', () =>
    expect(rsDropdownToggle.prop('caret')).toBe(true))

  it('should pass the label onto the toggle', () =>
    expect(rsDropdownToggle.prop('children')).toEqual('Label'))

  it('should pass its own children onto the reactstrap dropdown menu', () => {
    const dropdownMenuChildren = rsDropdownMenu.find(DropdownMenuItem)
    expect(dropdownMenuChildren).toHaveLength(1)
    expect(dropdownMenuChildren.prop('children')).toEqual('Item 1')
  })

  it('should open and close when the `toggle` callback is called', () => {
    expect(dropdownMenu.find(RSDropdown).prop('isOpen')).toBe(false)
    rsDropdown.prop('toggle')();
    expect(dropdownMenu.find(RSDropdown).prop('isOpen')).toBe(true)
    rsDropdown.prop('toggle')();
    expect(dropdownMenu.find(RSDropdown).prop('isOpen')).toBe(false)
  })

})
