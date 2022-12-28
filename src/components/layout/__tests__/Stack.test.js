/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import Stack from '../Stack';

describe('Stack', () => {
  test('renders a div with class "vstack"', () => {
    const stack = render(<Stack />);

    expect(stack.container.querySelector('div.vstack')).not.toBe(null);
  });

  test('renders its content', () => {
    const stack = render(
      <Stack>
        <div>First item</div>
        <div>Second item</div>
        <div>Third item</div>
      </Stack>
    );

    expect(stack.container).toHaveTextContent('First item');
    expect(stack.container).toHaveTextContent('Second item');
    expect(stack.container).toHaveTextContent('Third item');
  });

  test('renders a div with class hstack if direction is "horizontal"', () => {
    const {
      container: {firstChild: stack}
    } = render(<Stack direction="horizontal" />);

    expect(stack).toHaveClass('hstack');
  });

  test('gap changes the gap class of the object', () => {
    const stack = render(<Stack gap={3} />);

    expect(stack.container.querySelector('div.gap-3')).not.toBe(null);
  });
});
