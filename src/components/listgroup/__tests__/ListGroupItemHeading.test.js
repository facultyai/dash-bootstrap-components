import React from 'react';
import {render} from '@testing-library/react';
import ListGroupItemHeading from '../ListGroupItemHeading';

describe('ListGroupItemHeading', () => {
  test('renders a level 5 heading with class "list-group-item-heading"', () => {
    const listGroupItemHeading = render(<ListGroupItemHeading />);

    expect(
      listGroupItemHeading.container.querySelector('h5.list-group-item-heading')
    ).not.toBe(null);
  });

  test('HTML element can be chosen with "tag" prop', () => {
    const listGroupItemHeading3 = render(<ListGroupItemHeading tag="h3" />);

    expect(
      listGroupItemHeading3.container.querySelector(
        'h3.list-group-item-heading'
      )
    ).not.toBe(null);

    const listGroupItemHeadingSpan = render(
      <ListGroupItemHeading tag="span" />
    );

    expect(
      listGroupItemHeadingSpan.container.querySelector(
        'span.list-group-item-heading'
      )
    ).not.toBe(null);
  });

  test('renders its content', () => {
    const listGroupItemHeading = render(
      <ListGroupItemHeading>
        Some list group item heading content
      </ListGroupItemHeading>
    );

    expect(listGroupItemHeading.container).toHaveTextContent(
      'Some list group item heading content'
    );
  });
});
