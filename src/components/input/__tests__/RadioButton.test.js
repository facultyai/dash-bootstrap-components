/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import RadioButton from '../RadioButton';

describe('RadioButton', () => {
  test('renders a radio button', () => {
    const radio = render(<RadioButton value={false} />);
    const [input, label] = radio.container.firstChild.children;

    expect(input).toHaveClass('form-check-input');
    expect(label).toHaveClass('form-check-label');
    expect(input).toHaveAttribute('type', 'radio');
  });

  test('passes checked prop on to underlying HTML element', () => {
    const {
      container: {firstChild: radio},
      rerender
    } = render(<RadioButton />);

    const [input, label] = radio.children;
    expect(input.checked).toEqual(false);

    rerender(<RadioButton value={true} />);
    expect(input.checked).toEqual(true);

    rerender(<RadioButton value={false} />);
    expect(input.checked).toEqual(false);
  });

  test('dispatches updates to setProps if set', () => {
    const mockSetProps = jest.fn();
    const {
      container: {firstChild: radio},
      rerender
    } = render(<RadioButton setProps={mockSetProps} />);

    const [input, label] = radio.children;
    userEvent.click(input);
    expect(mockSetProps.mock.calls).toHaveLength(1);

    // props passed to setProps get passed back to the component by Dash renderer
    const arg1 = mockSetProps.mock.calls[0][0];
    rerender(<RadioButton setProps={mockSetProps} {...arg1} />);

    userEvent.click(input);
    expect(mockSetProps.mock.calls).toHaveLength(2);

    const arg2 = mockSetProps.mock.calls[1][0];

    expect(arg1.value).toEqual(true);
    expect(arg2.value).toEqual(false);
  });

  test('different options types work as expected (list)', () => {
    // Check that when provided with a list of options, these are converted to
    // the expected format

    const options = [
      {label: 'Option1', value: 'Option1'},
      {label: 'Option2', value: 'Option2'},
      {label: 'Option3', value: 'Option3'}
    ];

    const expectedOptionsRadioButton = render(
      <RadioButton options={options} />
    );

    const listOptions = ['Option1', 'Option2', 'Option3'];
    const listOptionsRadioButton = render(
      <RadioButton options={listOptions} />
    );

    expect(listOptionsRadioButton.container.innerHTML).toEqual(
      expectedOptionsRadioButton.container.innerHTML
    );
  });

  test('different options types work as expected (shorthand)', () => {
    // Check that when provided with a {label: value} array of options, these
    // are converted to the expected format

    const expectedOptions = [
      {label: 'Option A', value: 'Option1'},
      {label: 'Option B', value: 'Option2'},
      {label: 'Option C', value: 'Option3'}
    ];
    const expectedOptionsRadioButton = render(
      <RadioButton options={expectedOptions} />
    );

    const shortHandOptions = {
      Option1: 'Option A',
      Option2: 'Option B',
      Option3: 'Option C'
    };
    const shortHandOptionsRadioButton = render(
      <RadioButton options={shortHandOptions} />
    );

    expect(shortHandOptionsRadioButton.container.innerHTML).toEqual(
      expectedOptionsRadioButton.container.innerHTML
    );
  });
});
