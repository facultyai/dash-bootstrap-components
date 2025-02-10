/**
 * @jest-environment jsdom
 */
import React from 'react';

import {act, render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';

import DropdownMenu from '../DropdownMenu';
import DropdownMenuItem from '../DropdownMenuItem';

describe('DropdownMenu', () => {
  test('renders a button with class "dropdown-toggle"', async () => {
    let dropdownMenu;
    await act(async () => {
      dropdownMenu = render(
        <DropdownMenu label="toggle">
          <DropdownMenuItem>Item 1</DropdownMenuItem>
        </DropdownMenu>
      );
    });

    expect(dropdownMenu.getByText('toggle')).toHaveClass('dropdown-toggle');
  });

  test('renders the children in order inside the ".dropdown-menu"', async () => {
    let dropdownMenu;
    await act(async () => {
      dropdownMenu = render(
        <DropdownMenu label="toggle">
          <DropdownMenuItem>Item 1</DropdownMenuItem>
          <DropdownMenuItem>Test item 2</DropdownMenuItem>
        </DropdownMenu>
      );
    });

    expect(
      dropdownMenu.container.querySelector('.dropdown-menu').children[0]
    ).toHaveTextContent('Item 1');
    expect(
      dropdownMenu.container.querySelector('.dropdown-menu').children[1]
    ).toHaveTextContent('Test item 2');
  });

  test('clicking the toggle toggles the menu', async () => {
    const user = userEvent.setup();
    let dropdownMenu;
    await act(async () => {
      dropdownMenu = render(
        <DropdownMenu label="toggle">
          <DropdownMenuItem>Item 1</DropdownMenuItem>
        </DropdownMenu>
      );
    });

    expect(
      dropdownMenu.container.querySelector('.dropdown-menu')
    ).not.toHaveClass('show');

    await user.click(dropdownMenu.getByText('toggle'));
    expect(dropdownMenu.container.querySelector('.dropdown-menu')).toHaveClass(
      'show'
    );

    await user.click(dropdownMenu.getByText('toggle'));
    expect(
      dropdownMenu.container.querySelector('.dropdown-menu')
    ).not.toHaveClass('show');
  });

  test('renders toggle as nav_item if "nav" is true', async () => {
    let dropdownMenu;
    await act(async () => {
      dropdownMenu = render(
        <DropdownMenu label="toggle" nav>
          DropdownMenu content
        </DropdownMenu>
      );
    });

    const dropdownToggle = dropdownMenu.container.querySelector('.dropdown');
    expect(dropdownToggle).toHaveClass('nav-item');
    expect(dropdownToggle.firstChild.tagName.toLowerCase()).toEqual('a');
    expect(dropdownToggle.firstChild).toHaveClass('nav-link');
  });

  test("clicking the toggle doesn't toggle the menu if 'disabled' is set", async () => {
    const user = userEvent.setup();
    let dropdownMenu;
    await act(async () => {
      dropdownMenu = render(
        <DropdownMenu label="toggle" disabled>
          <DropdownMenuItem>Item 1</DropdownMenuItem>
        </DropdownMenu>
      );
    });

    expect(dropdownMenu.getByText('toggle')).toHaveAttribute('disabled');

    expect(
      dropdownMenu.container.querySelector('.dropdown-menu')
    ).not.toHaveClass('show');

    await user.click(dropdownMenu.getByText('toggle'));
    expect(
      dropdownMenu.container.querySelector('.dropdown-menu')
    ).not.toHaveClass('show');
  });

  test('applies additional CSS classes when props are set', async () => {
    // dropdownMenu sizes
    let dropdownMenuSm;
    let dropdownMenuLg;
    await act(async () => {
      dropdownMenuSm = render(
        <DropdownMenu size="sm" label="toggle small">
          <DropdownMenuItem>Item 1</DropdownMenuItem>
        </DropdownMenu>
      );
      dropdownMenuLg = render(
        <DropdownMenu size="lg" label="toggle large">
          <DropdownMenuItem>Item 1</DropdownMenuItem>
        </DropdownMenu>
      );
    });

    expect(dropdownMenuSm.getByText('toggle small')).toHaveClass('btn-sm');
    expect(dropdownMenuLg.getByText('toggle large')).toHaveClass('btn-lg');

    let dropdownMenuSuccess;
    let dropdownMenuDanger;
    await act(async () => {
      dropdownMenuSuccess = render(
        <DropdownMenu color="success" label="toggle success">
          <DropdownMenuItem>Item 1</DropdownMenuItem>
        </DropdownMenu>
      );
      dropdownMenuDanger = render(
        <DropdownMenu color="danger" label="toggle danger">
          <DropdownMenuItem>Item 1</DropdownMenuItem>
        </DropdownMenu>
      );
    });

    expect(dropdownMenuSuccess.getByText('toggle success')).toHaveClass(
      'btn-success'
    );
    expect(dropdownMenuDanger.getByText('toggle danger')).toHaveClass(
      'btn-danger'
    );
  });
});
