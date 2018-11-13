import React from 'react';
import {shallow} from 'enzyme';
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
      <DropdownMenu>
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
})
