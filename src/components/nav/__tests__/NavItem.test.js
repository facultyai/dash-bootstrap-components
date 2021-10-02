/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import NavItem from '../NavItem';

describe('NavItem', () => {
  test('renders a div with class "nav-item"', () => {
    const navbarBrand = render(<NavItem />);

    expect(navbarBrand.container.querySelector('div.nav-item')).not.toBe(null);
  });

  test('renders its content', () => {
    const navbarBrand = render(<NavItem>Some nav item content</NavItem>);

    expect(navbarBrand.container).toHaveTextContent('Some nav item content');
  });
});
