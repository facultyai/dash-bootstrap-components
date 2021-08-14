import React from 'react';
import {render} from '@testing-library/react';
import PaginationItem from '../PaginationItem';

describe('PaginationItem', () => {
  test('renders a li with class "page-item"', () => {
    const paginationItem = render(<PaginationItem />);

    expect(paginationItem.container.querySelector('li.page-item')).not.toBe(
      null
    );
  });

  test('predefined_types contain the right content', () => {
    const firstPaginationItem = render(
      <PaginationItem predefined_type="first" />
    );
    const previousPaginationItem = render(
      <PaginationItem predefined_type="previous" />
    );
    const nextPaginationItem = render(
      <PaginationItem predefined_type="next" />
    );
    const lastPaginationItem = render(
      <PaginationItem predefined_type="last" />
    );
    const ellipsisPaginationItem = render(
      <PaginationItem predefined_type="ellipsis" />
    );
    const customPaginationItem = render(<PaginationItem item_title="Custom" />);

    // FIXME - these all sit in a (second) <span> in an <a> in the <li>
    expect(firstPaginationItem.container).toHaveTextContent('First');
    expect(previousPaginationItem.container).toHaveTextContent('Previous');
    expect(nextPaginationItem.container).toHaveTextContent('Next');
    expect(lastPaginationItem.container).toHaveTextContent('Last');
    expect(ellipsisPaginationItem.container).toHaveTextContent('More');

    // FIXME - this sits in an <a> in the <li>
    expect(customPaginationItem.container).toHaveTextContent('Custom');
  });

  test('active and disabled props work as expected', () => {
    const activePaginationItem = render(<PaginationItem active />);
    const disabledPaginationItem = render(<PaginationItem disabled />);

    expect(activePaginationItem.container.querySelector('li.active')).not.toBe(
      null
    );
    expect(
      disabledPaginationItem.container.querySelector('li.disabled')
    ).not.toBe(null);
  });
});
