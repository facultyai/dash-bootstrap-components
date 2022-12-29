/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import Breadcrumb from '../Breadcrumb';

describe('Breadcrumb', () => {
  let items;

  beforeAll(() => {
    items = [
      {label: 'Item', href: '/item'},
      {label: 'Subitem', href: '/item/subitem'},
      {label: 'Subsubitem', href: '/item/subitem/subsubitem', active: true}
    ];
  });

  test('renders an ol with breadcrumb class', () => {
    const {container} = render(<Breadcrumb />);
    expect(container.querySelector('ol.breadcrumb')).not.toBe(null);
  });

  test('renders each item correctly, in order', () => {
    const {container} = render(<Breadcrumb items={items} />);

    const breadcrumbItems = container.querySelector('ol.breadcrumb');
    expect(breadcrumbItems.children).toHaveLength(3);

    // Item class
    expect(breadcrumbItems.children[0]).toHaveClass('breadcrumb-item');
    expect(breadcrumbItems.children[1]).toHaveClass('breadcrumb-item');
    expect(breadcrumbItems.children[2]).toHaveClass('breadcrumb-item');

    // Content
    expect(breadcrumbItems.children[0]).toHaveTextContent('Item');
    expect(breadcrumbItems.children[1]).toHaveTextContent('Subitem');
    expect(breadcrumbItems.children[2]).toHaveTextContent('Subsubitem');

    // Links
    expect(breadcrumbItems.children[0].querySelector('a')).toHaveAttribute(
      'href',
      '/item'
    );
    expect(breadcrumbItems.children[1].querySelector('a')).toHaveAttribute(
      'href',
      '/item/subitem'
    );
    // last item has no href as it is active.
    expect(breadcrumbItems.children[2].querySelector('a')).toBe(null);
  });

  test('correctly applies the active class', () => {
    const {container} = render(<Breadcrumb items={items} />);
    const breadcrumbItems = container.querySelector('ol.breadcrumb');

    // Item active class
    expect(breadcrumbItems.children[0]).not.toHaveClass('active');
    expect(breadcrumbItems.children[1]).not.toHaveClass('active');
    expect(breadcrumbItems.children[2]).toHaveClass('active');
  });
});
