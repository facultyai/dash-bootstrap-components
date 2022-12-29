/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Pagination from '../Pagination';

describe('Pagination', () => {
  test('renders a ul with class "pagination"', () => {
    const pagination = render(<Pagination max_value={5} />);

    expect(pagination.container.querySelector('ul.pagination')).not.toBe(null);
  });

  test('renders different size pagination', () => {
    const lgPagination = render(<Pagination max_value={5} size="lg" />);
    const smPagination = render(<Pagination max_value={5} size="sm" />);

    expect(lgPagination.container.querySelector('ul.pagination-lg')).not.toBe(
      null
    );

    expect(smPagination.container.querySelector('ul.pagination-sm')).not.toBe(
      null
    );
  });

  test('renders pagination items', () => {
    const paginationSimple = render(<Pagination max_value={1} />);

    expect(paginationSimple.container.querySelector('li.page-item')).not.toBe(
      null
    );
    expect(
      paginationSimple.container.querySelector('ul.pagination').children
    ).toHaveLength(1);

    const paginationComplex = render(<Pagination max_value={5} />);

    expect(
      paginationComplex.container.querySelector('ul.pagination').children
    ).toHaveLength(5);
  });

  test('active props work as expected', () => {
    const mockSetProps = jest.fn();
    const pagination = render(
      <Pagination setProps={mockSetProps} active_page={2} max_value={5} />
    );

    expect(pagination.container.querySelector('li.active')).not.toBe(null);
    expect(pagination.container.querySelector('li.active')).toHaveTextContent(
      '2'
    );

    // add changes to the active one
    userEvent.click(
      pagination.container
        .querySelector('ul.pagination')
        .lastChild.querySelector('a')
    );

    expect(mockSetProps.mock.calls[0][0].active_page).toBe(5);
  });

  test('first_last works as expected', () => {
    const mockSetProps = jest.fn();

    const pagination = render(
      <Pagination
        setProps={mockSetProps}
        active_page={3}
        max_value={5}
        first_last={true}
      />
    );

    // Check layout
    expect(
      pagination.container
        .querySelector('ul.pagination')
        .firstChild.querySelector('span.visually-hidden')
    ).toHaveTextContent('First');
    expect(
      pagination.container
        .querySelector('ul.pagination')
        .lastChild.querySelector('span.visually-hidden')
    ).toHaveTextContent('Last');

    // Check first sets the page correctly
    userEvent.click(
      pagination.container
        .querySelector('ul.pagination')
        .firstChild.querySelector('a')
    );
    expect(mockSetProps.mock.calls[0][0].active_page).toBe(1);

    // Check last sets the page correctly
    userEvent.click(
      pagination.container
        .querySelector('ul.pagination')
        .lastChild.querySelector('a')
    );
    expect(mockSetProps.mock.calls[1][0].active_page).toBe(5);
  });

  test('previous_next works as expected', () => {
    const mockSetProps = jest.fn();
    const pagination = render(
      <Pagination
        setProps={mockSetProps}
        active_page={3}
        max_value={5}
        previous_next={true}
      />
    );

    // Check layout
    expect(
      pagination.container
        .querySelector('ul.pagination')
        .firstChild.querySelector('span.visually-hidden')
    ).toHaveTextContent('Previous');
    expect(
      pagination.container
        .querySelector('ul.pagination')
        .lastChild.querySelector('span.visually-hidden')
    ).toHaveTextContent('Next');

    // Check previous sets the page correctly
    userEvent.click(
      pagination.container
        .querySelector('ul.pagination')
        .firstChild.querySelector('a')
    );
    expect(mockSetProps.mock.calls[0][0].active_page).toBe(2);

    // Check next sets the page correctly
    userEvent.click(
      pagination.container
        .querySelector('ul.pagination')
        .lastChild.querySelector('a')
    );
    expect(mockSetProps.mock.calls[1][0].active_page).toBe(4);
  });

  test('fully_expanded works as expected', () => {
    const paginationShort = render(
      <Pagination max_value={5} fully_expanded={false} />
    );

    // Less than 7 boxes and it doesn't contain the Ellipsis (disabled)
    expect(paginationShort.container.querySelector('li.disabled')).toBe(null);

    // More than 7 boxes...

    // active_page <= 4 then needs to be in the pattern 1, 2, 3, 4, 5, ..., 10
    let pagination = render(
      <Pagination max_value={10} active_page={3} fully_expanded={false} />
    );
    expect(
      pagination.container.querySelector('ul.pagination').children
    ).toHaveLength(7);
    expect(
      pagination.container.querySelector('ul.pagination')
    ).toHaveTextContent('123(current)45…More10');

    // active_page >= 7 then needs to be in the pattern 1, ..., 6, 7, 8, 9, 10
    pagination = render(
      <Pagination max_value={10} active_page={8} fully_expanded={false} />
    );
    expect(
      pagination.container.querySelector('ul.pagination').children
    ).toHaveLength(7);
    expect(
      pagination.container.querySelector('ul.pagination')
    ).toHaveTextContent('1…More678(current)910');

    // 4 < active_page < 7 then needs to be in the pattern 1, ..., 4, 5, 6, ..., 10
    pagination = render(
      <Pagination max_value={10} active_page={5} fully_expanded={false} />
    );
    expect(
      pagination.container.querySelector('ul.pagination').children
    ).toHaveLength(7);
    expect(
      pagination.container.querySelector('ul.pagination')
    ).toHaveTextContent('1…More45(current)6…More10');
  });
});
