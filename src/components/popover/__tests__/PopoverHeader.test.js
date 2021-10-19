/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import PopoverHeader from '../PopoverHeader';

describe('PopoverHeader', () => {
  test('renders an element with class "popover-header"', () => {
    const popoverHeader = render(<PopoverHeader />);

    expect(popoverHeader.container.querySelector('.popover-header')).not.toBe(
      null
    );
  });

  test('renders its content', () => {
    const popoverHeader = render(
      <PopoverHeader>Some popover header content</PopoverHeader>
    );

    expect(popoverHeader.container).toHaveTextContent(
      'Some popover header content'
    );
  });
});
