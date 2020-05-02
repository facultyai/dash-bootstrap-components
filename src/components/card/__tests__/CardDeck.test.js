import React from 'react';
import {render} from '@testing-library/react';
import CardDeck from '../CardDeck';

describe('CardDeck', () => {
  test('renders a div with class "card-deck"', () => {
    const cardDeck = render(<CardDeck />);

    expect(cardDeck.container.querySelector('div.card-deck')).not.toBe(null);
  });

  test('renders its content', () => {
    const cardDeck = render(<CardDeck>Some card deck content</CardDeck>);

    expect(cardDeck.container).toHaveTextContent('Some card deck content');
  });
});
