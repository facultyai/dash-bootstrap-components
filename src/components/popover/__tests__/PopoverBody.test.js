/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import PopoverBody from '../PopoverBody';

describe('PopoverBody', () => {
  test('renders an element with class "popover-body"', () => {
    const popoverBody = render(<PopoverBody />);

    expect(popoverBody.container.querySelector('.popover-body')).not.toBe(null);
  });

  test('renders its content', () => {
    const popoverBody = render(
      <PopoverBody>Some popover body content</PopoverBody>
    );

    expect(popoverBody.container).toHaveTextContent(
      'Some popover body content'
    );
  });
});
