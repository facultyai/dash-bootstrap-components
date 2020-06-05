import React from 'react';
import {render, fireEvent} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Input from '../Input';

describe('Input', () => {
  test('renders an input with class "form-control"', () => {
    const input = render(<Input />);

    expect(input.container.querySelector('input.form-control')).not.toBe(null);
  });

  test('has no value by default', () => {
    const input = render(<Input />);

    expect(input.container.firstChild).not.toHaveValue();
  });

  test('passes HTML attributes on to underlying input', () => {
    const {
      container: {firstChild: input}
    } = render(
      <Input
        autoComplete="username"
        disabled
        inputMode="verbatim"
        list="datalist-id"
        max={10}
        maxLength="20"
        min={1}
        minLength="2"
        name="test-name"
        pattern="test-pattern"
        placeholder="test-placeholder"
        size="42"
        step={2}
        tabIndex="3"
        type="text"
      />
    );

    expect(input).toHaveAttribute('autocomplete', 'username');
    expect(input).toHaveAttribute('disabled');
    expect(input).toHaveAttribute('inputmode', 'verbatim');
    expect(input).toHaveAttribute('list', 'datalist-id');
    expect(input).toHaveAttribute('max', '10');
    expect(input).toHaveAttribute('maxlength', '20');
    expect(input).toHaveAttribute('min', '1');
    expect(input).toHaveAttribute('minlength', '2');
    expect(input).toHaveAttribute('name', 'test-name');
    expect(input).toHaveAttribute('pattern', 'test-pattern');
    expect(input).toHaveAttribute('placeholder', 'test-placeholder');
    expect(input).toHaveAttribute('size', '42');
    expect(input).toHaveAttribute('step', '2');
    expect(input).toHaveAttribute('tabindex', '3');
    expect(input).toHaveAttribute('type', 'text');
  });

  test('sets validity using "valid" and "invalid" props', () => {
    const validInput = render(<Input valid />);
    const invalidInput = render(<Input invalid />);

    expect(validInput.container.firstChild).toHaveClass('is-valid');
    expect(invalidInput.container.firstChild).toHaveClass('is-invalid');
  });

  describe('setProps', () => {
    let input, mockSetProps;

    beforeEach(() => {
      mockSetProps = jest.fn();
      input = render(<Input setProps={mockSetProps} />);
    });

    test('tracks changes with "value" prop', () => {
      const {
        container: {firstChild: inputElement},
        rerender
      } = input;
      fireEvent.change(inputElement, {
        target: {value: 'some-input-value'}
      });
      expect(mockSetProps.mock.calls).toHaveLength(1);
      expect(mockSetProps.mock.calls[0][0]).toEqual({
        value: 'some-input-value'
      });
      rerender(
        <Input setProps={mockSetProps} {...mockSetProps.mock.calls[0][0]} />
      );
      expect(inputElement).toHaveValue('some-input-value');
    });

    test('dispatches update for each typed character', () => {
      const {
        container: {firstChild: inputElement}
      } = input;
      userEvent.type(inputElement, 'abc');

      expect(mockSetProps.mock.calls).toHaveLength(3);

      const [call1, call2, call3] = mockSetProps.mock.calls;
      expect(call1).toEqual([{value: 'a'}]);
      expect(call2).toEqual([{value: 'ab'}]);
      expect(call3).toEqual([{value: 'abc'}]);
    });

    test('track number of blurs with "n_blur" and "n_blur_timestamp"', () => {
      const {
        container: {firstChild: inputElement}
      } = input;
      const before = Date.now();
      fireEvent.blur(inputElement);
      const after = Date.now();

      expect(mockSetProps.mock.calls).toHaveLength(1);

      const [[{n_blur, n_blur_timestamp}]] = mockSetProps.mock.calls;
      expect(n_blur).toEqual(1);
      expect(n_blur_timestamp).toBeGreaterThanOrEqual(before);
      expect(n_blur_timestamp).toBeLessThanOrEqual(after);
    });

    test('tracks submit with "n_submit" and "n_submit_timestamp"', () => {
      const {
        container: {firstChild: inputElement}
      } = input;
      const before = Date.now();
      fireEvent.keyPress(inputElement, {key: 'Enter', code: 13, charCode: 13});
      const after = Date.now();

      expect(mockSetProps.mock.calls).toHaveLength(1);

      const [[{n_submit, n_submit_timestamp}]] = mockSetProps.mock.calls;
      expect(n_submit).toEqual(1);
      expect(n_submit_timestamp).toBeGreaterThanOrEqual(before);
      expect(n_submit_timestamp).toBeLessThanOrEqual(after);
    });

    test("don't increment n_submit if key is not Enter", () => {
      const {
        container: {firstChild: inputElement}
      } = input;
      fireEvent.keyPress(inputElement, {key: 'a', code: 65, charCode: 65});
      expect(mockSetProps.mock.calls).toHaveLength(0);
    });
  });

  describe('debounce', () => {
    let mockSetProps;

    beforeEach(() => {
      mockSetProps = jest.fn();
    });

    test("don't call setProps on change if debounce is true", () => {
      const {
        container: {firstChild: inputElement}
      } = render(<Input setProps={mockSetProps} debounce />);
      fireEvent.change(inputElement, {
        target: {value: 'some-input-value'}
      });
      expect(mockSetProps.mock.calls).toHaveLength(0);
      expect(inputElement).toHaveValue('some-input-value');
    });

    test('dispatch value on blur if debounce is true', () => {
      const {
        container: {firstChild: inputElement}
      } = render(
        <Input setProps={mockSetProps} value="some-input-value" debounce />
      );
      const before = Date.now();
      fireEvent.blur(inputElement);
      const after = Date.now();

      expect(mockSetProps.mock.calls).toHaveLength(1);

      const [[{n_blur, n_blur_timestamp, value}]] = mockSetProps.mock.calls;
      expect(n_blur).toEqual(1);
      expect(n_blur_timestamp).toBeGreaterThanOrEqual(before);
      expect(n_blur_timestamp).toBeLessThanOrEqual(after);

      expect(value).toEqual('some-input-value');
    });

    test('dispatch value on submit if debounce is true', () => {
      const {
        container: {firstChild: inputElement}
      } = render(
        <Input setProps={mockSetProps} value="some-input-value" debounce />
      );

      const before = Date.now();
      fireEvent.keyPress(inputElement, {
        key: 'Enter',
        code: 13,
        charCode: 13
      });
      const after = Date.now();

      expect(mockSetProps.mock.calls).toHaveLength(1);

      const [[{n_submit, n_submit_timestamp, value}]] = mockSetProps.mock.calls;
      expect(n_submit).toEqual(1);
      expect(n_submit_timestamp).toBeGreaterThanOrEqual(before);
      expect(n_submit_timestamp).toBeLessThanOrEqual(after);
      expect(value).toEqual('some-input-value');
    });
  });

  describe('number input', () => {
    let inputElement, rerender, mockSetProps;

    beforeEach(() => {
      mockSetProps = jest.fn();
      const input = render(<Input setProps={mockSetProps} type="number" />);
      inputElement = input.container.firstChild;
      rerender = input.rerender;
    });

    test('tracks changes with "value" prop', () => {
      fireEvent.change(inputElement, {
        target: {value: 12}
      });
      expect(mockSetProps.mock.calls).toHaveLength(1);
      rerender(
        <Input
          setProps={mockSetProps}
          type="number"
          {...mockSetProps.mock.calls[0][0]}
        />
      );
      expect(inputElement).toHaveValue(12);

      fireEvent.change(inputElement, {
        target: {value: -42}
      });
      expect(mockSetProps.mock.calls).toHaveLength(2);
      rerender(
        <Input
          setProps={mockSetProps}
          type="number"
          {...mockSetProps.mock.calls[1][0]}
        />
      );
      expect(inputElement).toHaveValue(-42);

      fireEvent.change(inputElement, {
        target: {value: 1.01}
      });
      expect(mockSetProps.mock.calls).toHaveLength(3);
      rerender(
        <Input
          setProps={mockSetProps}
          type="number"
          {...mockSetProps.mock.calls[2][0]}
        />
      );
      expect(inputElement).toHaveValue(1.01);

      fireEvent.change(inputElement, {
        target: {value: 0}
      });
      expect(mockSetProps.mock.calls).toHaveLength(4);
      rerender(
        <Input
          setProps={mockSetProps}
          type="number"
          {...mockSetProps.mock.calls[3][0]}
        />
      );
      expect(inputElement).toHaveValue(0);

      const [call1, call2, call3, call4] = mockSetProps.mock.calls;
      expect(call1).toEqual([{value: 12}]);
      expect(call2).toEqual([{value: -42}]);
      expect(call3).toEqual([{value: 1.01}]);
      expect(call4).toEqual([{value: 0}]);
    });

    test('dispatches update for each typed character', () => {
      userEvent.type(inputElement, '-1e4');

      expect(mockSetProps.mock.calls).toHaveLength(3);

      const [call1, call2, call3] = mockSetProps.mock.calls;
      expect(call1).toEqual([{value: -1}]);
      expect(call2).toEqual([{value: undefined}]);
      expect(call3).toEqual([{value: -10000}]);

      rerender(
        <Input
          setProps={mockSetProps}
          type="number"
          {...mockSetProps.mock.calls[2][0]}
        />
      );

      expect(inputElement).toHaveValue(-10000);
    });

    test('only accepts numeric input', () => {
      userEvent.type(inputElement, 'asdf?');

      expect(inputElement).not.toHaveValue();
      expect(mockSetProps.mock.calls).toHaveLength(0);
    });
  });
});
