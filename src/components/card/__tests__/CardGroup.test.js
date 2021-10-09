/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import CardGroup from '../CardGroup';

describe('CardGroup', () => {
  test('renders a div with class "card-group"', () => {
    const cardGroup = render(<CardGroup />);

    expect(cardGroup.container.querySelector('div.card-group')).not.toBe(null);
  });

  test('renders its content', () => {
    const cardGroup = render(<CardGroup>Some card group content</CardGroup>);

    expect(cardGroup.container).toHaveTextContent('Some card group content');
  });
});
