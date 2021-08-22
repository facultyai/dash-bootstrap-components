import React from 'react';
import {render} from '@testing-library/react';
import Breadcrumb from '../Breadcrumb';
import BreadcrumbItem from '../BreadcrumbItem';

describe('Breadcrumb', () => {
  test('renders an ol with breadcrumb class', () => {
    const {container} = render(<Breadcrumb />);
    expect(container.querySelector('ol.breadcrumb')).not.toBe(null);
  });

  test('renders each item correctly, in order', () => {
    const {container} = render(
      <Breadcrumb>
        <BreadcrumbItem href="/item-href-1">item-content-1</BreadcrumbItem>
        <BreadcrumbItem href="/item-href-2">item-content-2</BreadcrumbItem>
      </Breadcrumb>
    );
    expect(container.querySelector('li.breadcrumb-item')).not.toBe(null);

    const breadcrumbItems = container.querySelector('ol.breadcrumb');
    expect(breadcrumbItems.children).toHaveLength(2);

    // Item class
    expect(breadcrumbItems.children[0]).toHaveClass('breadcrumb-item');
    expect(breadcrumbItems.children[1]).toHaveClass('breadcrumb-item');

    // Content
    expect(breadcrumbItems.children[0]).toHaveTextContent('item-content-1');
    expect(breadcrumbItems.children[1]).toHaveTextContent('item-content-2');

    // Links
    expect(breadcrumbItems.children[0].querySelector('a')).toHaveAttribute(
      'href',
      '/item-href-1'
    );
    expect(breadcrumbItems.children[1].querySelector('a')).toHaveAttribute(
      'href',
      '/item-href-2'
    );
  });

  test('correctly applies the active class', () => {
    const {container} = render(
      <Breadcrumb>
        <BreadcrumbItem href="/item-href-1">item-content-1</BreadcrumbItem>
        <BreadcrumbItem href="/item-href-2" active>
          item-content-2
        </BreadcrumbItem>
        <BreadcrumbItem href="/" active="exact">
          current-page
        </BreadcrumbItem>
        <BreadcrumbItem href="/" active="partial">
          current-page
        </BreadcrumbItem>
        <BreadcrumbItem href="/child-page" active="exact">
          child-page
        </BreadcrumbItem>
        <BreadcrumbItem href="/child-page" active="partial">
          child-page
        </BreadcrumbItem>
      </Breadcrumb>
    );

    // TODO - Add a page that should be active on partial but not on exact

    const breadcrumbItems = container.querySelector('ol.breadcrumb');

    // Item active class
    expect(breadcrumbItems.children[0]).not.toHaveClass('active');
    expect(breadcrumbItems.children[1]).toHaveClass('active');
    expect(breadcrumbItems.children[2]).toHaveClass('active');
    expect(breadcrumbItems.children[3]).toHaveClass('active');
    expect(breadcrumbItems.children[4]).not.toHaveClass('active');
    expect(breadcrumbItems.children[5]).not.toHaveClass('active');
  });
});
