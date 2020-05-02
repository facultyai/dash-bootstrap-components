import React from 'react';
import {render} from '@testing-library/react';
import ListGroupItemText from '../ListGroupItemText';

describe('ListGroupItemText', () => {
  test('renders a paragraph with class "list-group-item-text"', () => {
    const listGroupItemText = render(<ListGroupItemText />);

    expect(
      listGroupItemText.container.querySelector('p.list-group-item-text')
    ).not.toBe(null);
  });

  test('HTML element can be chosen with "tag" prop', () => {
    const listGroupItemTextDiv = render(<ListGroupItemText tag="div" />);

    expect(
      listGroupItemTextDiv.container.querySelector('div.list-group-item-text')
    ).not.toBe(null);

    const listGroupItemTextSpan = render(<ListGroupItemText tag="span" />);

    expect(
      listGroupItemTextSpan.container.querySelector('span.list-group-item-text')
    ).not.toBe(null);
  });

  test('renders its content', () => {
    const listGroupItemText = render(
      <ListGroupItemText>Some list group item text content</ListGroupItemText>
    );

    expect(listGroupItemText.container).toHaveTextContent(
      'Some list group item text content'
    );
  });
});
