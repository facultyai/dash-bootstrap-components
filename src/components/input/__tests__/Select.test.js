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
});
