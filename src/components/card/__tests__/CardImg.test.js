/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import CardImg from '../CardImg';

describe('CardImg', () => {
  test('renders a div with class "card-img"', () => {
    const cardImg = render(<CardImg />);

    expect(cardImg.container.querySelector('img.card-img')).not.toBe(null);
  });

  test('renders its content', () => {
    const cardImg = render(<CardImg src="/test-image.jpg" />);

    expect(cardImg.container.querySelector('.card-img')).toHaveAttribute(
      'src',
      '/test-image.jpg'
    );
  });
});
