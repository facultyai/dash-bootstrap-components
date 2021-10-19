/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Checkbox from '../Checkbox';

describe('Checkbox', () => {
  test('renders a checkbox', () => {
    const checkbox = render(<Checkbox />);
    const [input, label] = checkbox.container.firstChild.children;

    expect(checkbox.container.firstChild).toHaveClass('form-check');
    expect(input).toHaveClass('form-check-input');
    expect(label).toHaveClass('form-check-label');
    expect(input).toHaveAttribute('type', 'checkbox');
  });

  test('dispatches updates to setProps if set', () => {
    const mockSetProps = jest.fn();
    const {
      container: {firstChild: checkbox},
      rerender
    } = render(<Checkbox setProps={mockSetProps} />);

    const [input, label] = checkbox.children;
    userEvent.click(input);
    expect(mockSetProps.mock.calls).toHaveLength(1);

    // props passed to setProps get passed back to the component by Dash renderer
    const arg1 = mockSetProps.mock.calls[0][0];
    rerender(<Checkbox setProps={mockSetProps} {...arg1} />);

    userEvent.click(input);
    expect(mockSetProps.mock.calls).toHaveLength(2);

    const arg2 = mockSetProps.mock.calls[1][0];

    expect(arg1.value).toEqual(true);
    expect(arg2.value).toEqual(false);
  });
});
