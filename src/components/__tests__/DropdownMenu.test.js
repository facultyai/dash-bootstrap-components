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

  afterAll(() => {
    dropdownMenu.unmount()
  })

})

describe('DropdownMenu - options', () => {

  let dropdownMenu;
  let rsDropdown;
  let rsDropdownToggle;
  let rsDropdownMenu;

  it('in_navbar', () => {
    dropdownMenu = shallow(
      <DropdownMenu label="Label" in_navbar={true}>
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    )
    rsDropdown = dropdownMenu.find(RSDropdown);

    expect(rsDropdown.prop('inNavbar')).toBe(true)
  })

  it('disabled', () => {
    dropdownMenu = shallow(
      <DropdownMenu label="Label" disabled={true}>
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    )
    rsDropdown = dropdownMenu.find(RSDropdown);
    rsDropdownToggle = dropdownMenu.find(RSDropdownToggle);

    expect(rsDropdown.prop('disabled')).toBe(true)
    expect(rsDropdownToggle.prop('disabled')).toBe(true)
  })

  it('nav', () => {
    dropdownMenu = shallow(
      <DropdownMenu label="Label" nav={true}>
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    )
    rsDropdown = dropdownMenu.find(RSDropdown);
    rsDropdownToggle = dropdownMenu.find(RSDropdownToggle);

    expect(rsDropdown.prop('nav')).toBe(true)
    expect(rsDropdownToggle.prop('nav')).toBe(true)
  })

  afterEach(() => {
    dropdownMenu.unmount();
  })

})
