/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render, fireEvent} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Select from '../Select';

describe('Select', () => {
  test('renders a select with class "form-select"', () => {
    const select = render(
      <Select
        id="test-select"
        options={[
          {label: 'Item 1', value: '1'},
          {label: 'Item 2', value: '2'}
        ]}
      />
    );

    expect(select.container.querySelector('select.form-select')).not.toBe(null);
    expect(select.container).toHaveTextContent('Item 1');
  });

  test("doesn't throw an error if no options are passed", () => {
    render(<Select id="test-select" />);
  });

  test('has no value by default', () => {
    const {
      container: {firstChild: select}
    } = render(
      <Select
        id="test-select"
        options={[
          {label: 'Item 1', value: '1'},
          {label: 'Item 2', value: '2'}
        ]}
      />
    );

    expect(select).not.toHaveValue();
  });

  test('null will clear value', () => {
    const {
      container: {firstChild: select}
    } = render(
      <Select
        id="test-select"
        options={[
          {label: 'Item 1', value: '1'},
          {label: 'Item 2', value: '2'}
        ]}
        value={null}
      />
    );

    expect(select).not.toHaveValue();
  });

  test('sets validity using "valid" and "invalid" props', () => {
    const validSelect = render(<Select valid />);
    const invalidSelect = render(<Select invalid />);

    expect(validSelect.container.firstChild).toHaveClass('is-valid');
    expect(invalidSelect.container.firstChild).toHaveClass('is-invalid');
  });

  test('dispatches value when selection is made and setProps is set', () => {
    const mockSetProps = jest.fn();
    const {
      container: {firstChild: select},
      rerender
    } = render(
      <Select
        id="test-select"
        options={[
          {label: 'Item 1', value: '1'},
          {label: 'Item 2', value: '2'}
        ]}
        setProps={mockSetProps}
      />
    );

    expect(select).not.toHaveValue();

    userEvent.selectOptions(select, '2');

    expect(mockSetProps.mock.calls).toHaveLength(1);
    const [[{value}]] = mockSetProps.mock.calls;
    expect(value).toEqual('2');

    rerender(
      <Select
        id="test-select"
        options={[
          {label: 'Item 1', value: '1'},
          {label: 'Item 2', value: '2'}
        ]}
        setProps={mockSetProps}
        value="2"
      />
    );
    expect(select).toHaveValue('2');
  });

  test('different options types work as expected (list)', () => {
    // Check that when provided with a list of options, these are converted to
    // the expected format

    const options = [
      {label: 'Option1', value: 'Option1'},
      {label: 'Option2', value: 'Option2'},
      {label: 'Option3', value: 'Option3'}
    ];

    const expectedOptionsSelect = render(<Select options={options} />);

    const listOptions = ['Option1', 'Option2', 'Option3'];
    const listOptionsSelect = render(<Select options={listOptions} />);

    expect(listOptionsSelect.container.innerHTML).toEqual(
      expectedOptionsSelect.container.innerHTML
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
    const expectedOptionsSelect = render(<Select options={expectedOptions} />);

    const shortHandOptions = {
      Option1: 'Option A',
      Option2: 'Option B',
      Option3: 'Option C'
    };
    const shortHandOptionsSelect = render(
      <Select options={shortHandOptions} />
    );

    expect(shortHandOptionsSelect.container.innerHTML).toEqual(
      expectedOptionsSelect.container.innerHTML
    );
  });
});
