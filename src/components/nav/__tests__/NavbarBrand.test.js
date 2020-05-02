import React from 'react';
import {render} from '@testing-library/react';
import NavbarBrand from '../NavbarBrand';

describe('NavbarBrand', () => {
  test('renders a span with class "navbar-brand"', () => {
    const navbarBrand = render(<NavbarBrand />);

    expect(navbarBrand.container.querySelector('span.navbar-brand')).not.toBe(
      null
    );
  });

  test('renders its content', () => {
    const navbarBrand = render(
      <NavbarBrand>Some navbar brand content</NavbarBrand>
    );

    expect(navbarBrand.container).toHaveTextContent(
      'Some navbar brand content'
    );
  });

  test('render as a link when href is set', () => {
    const href = '/test-href';
    const {
      container: {firstChild: navbarBrand}
    } = render(<NavbarBrand href={href} />);
    expect(navbarBrand.getAttribute('href')).toBe(href);
  });
});
