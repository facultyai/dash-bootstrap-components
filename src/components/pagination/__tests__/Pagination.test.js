import React from 'react';
import {render} from '@testing-library/react';
import Pagination from '../Pagination';
import PaginationItem from '../PaginationItem';

describe('Pagination', () => {
  test('renders a ul with class "pagination"', () => {
    const pagination = render(<Pagination />);

    expect(pagination.container.querySelector('ul.pagination')).not.toBe(null);
  });

  test('renders different size pagination', () => {
    const lgPagination = render(<Pagination size="lg" />);
    const smPagination = render(<Pagination size="sm" />);

    expect(lgPagination.container.querySelector('ul.pagination-lg')).not.toBe(
      null
    );

    expect(smPagination.container.querySelector('ul.pagination-sm')).not.toBe(
      null
    );
  });

  test('renders pagination items', () => {
    const pagination = render(
      <Pagination>
        <PaginationItem predefined_type="first" />
      </Pagination>
    );

    expect(pagination.container.querySelector('li.page-item')).not.toBe(null);

    // TODO: Add a test for multiple PaginationItems
  });
});
