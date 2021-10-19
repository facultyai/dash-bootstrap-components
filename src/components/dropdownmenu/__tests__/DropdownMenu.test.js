/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import DropdownMenu from '../DropdownMenu';
import DropdownMenuItem from '../DropdownMenuItem';

describe('DropdownMenu', () => {
  // this is just a little hack to silence a warning that we'll get until we
  // upgrade to 16.9. See also: https://github.com/facebook/react/pull/14853
  const originalError = console.error;
  beforeAll(() => {
    console.error = (...args) => {
      if (/Warning.*not wrapped in act/.test(args[0])) {
        return;
      }
      originalError.call(console, ...args);
    };
  });

  afterAll(() => {
    console.error = originalError;
  });

  test('renders a button with class "dropdown-toggle"', () => {
    const dropdownMenu = render(
      <DropdownMenu label="toggle">
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    );

    expect(dropdownMenu.getByText('toggle')).toHaveClass('dropdown-toggle');
  });

  test('renders the children in order inside the ".dropdown-menu"', () => {
    const dropdownMenu = render(
      <DropdownMenu label="toggle">
        <DropdownMenuItem>Item 1</DropdownMenuItem>
        <DropdownMenuItem>Test item 2</DropdownMenuItem>
      </DropdownMenu>
    );

    expect(
      dropdownMenu.container.querySelector('.dropdown-menu').children[0]
    ).toHaveTextContent('Item 1');
    expect(
      dropdownMenu.container.querySelector('.dropdown-menu').children[1]
    ).toHaveTextContent('Test item 2');
  });

  test('clicking the toggle toggles the menu', () => {
    const dropdownMenu = render(
      <DropdownMenu label="toggle">
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    );

    expect(
      dropdownMenu.container.querySelector('.dropdown-menu')
    ).not.toHaveClass('show');

    userEvent.click(dropdownMenu.getByText('toggle'));
    expect(dropdownMenu.container.querySelector('.dropdown-menu')).toHaveClass(
      'show'
    );

    userEvent.click(dropdownMenu.getByText('toggle'));
    expect(
      dropdownMenu.container.querySelector('.dropdown-menu')
    ).not.toHaveClass('show');
  });

  test('renders toggle as nav_item if "nav" is true', () => {
    const dropdownMenu = render(
      <DropdownMenu label="toggle" nav>
        DropdownMenu content
      </DropdownMenu>
    );

    const dropdownToggle = dropdownMenu.container.querySelector('.dropdown');
    expect(dropdownToggle).toHaveClass('nav-item');
    expect(dropdownToggle.firstChild.tagName.toLowerCase()).toEqual('a');
    expect(dropdownToggle.firstChild).toHaveClass('nav-link');
  });

  test("clicking the toggle doesn't toggle the menu if 'disabled' is set", () => {
    const dropdownMenu = render(
      <DropdownMenu label="toggle" disabled>
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    );

    expect(dropdownMenu.getByText('toggle')).toHaveAttribute('disabled');

    expect(
      dropdownMenu.container.querySelector('.dropdown-menu')
    ).not.toHaveClass('show');

    userEvent.click(dropdownMenu.getByText('toggle'));
    expect(
      dropdownMenu.container.querySelector('.dropdown-menu')
    ).not.toHaveClass('show');
  });

  test('applies additional CSS classes when props are set', () => {
    // dropdownMenu sizes
    const dropdownMenuSm = render(
      <DropdownMenu size="sm" label="toggle small">
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    );
    const dropdownMenuLg = render(
      <DropdownMenu size="lg" label="toggle large">
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    );

    expect(dropdownMenuSm.getByText('toggle small')).toHaveClass('btn-sm');
    expect(dropdownMenuLg.getByText('toggle large')).toHaveClass('btn-lg');

    const dropdownMenuSuccess = render(
      <DropdownMenu color="success" label="toggle success">
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    );
    const dropdownMenuDanger = render(
      <DropdownMenu color="danger" label="toggle danger">
        <DropdownMenuItem>Item 1</DropdownMenuItem>
      </DropdownMenu>
    );

    expect(dropdownMenuSuccess.getByText('toggle success')).toHaveClass(
      'btn-success'
    );
    expect(dropdownMenuDanger.getByText('toggle danger')).toHaveClass(
      'btn-danger'
    );
  });
});
