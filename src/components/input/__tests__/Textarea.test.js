/**
 * @jest-environment jsdom
 */
import React from 'react';

import {act, fireEvent, render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';

import Textarea from '../Textarea';

describe('Textarea', () => {
  test('renders a textarea with class "form-control"', () => {
    const textarea = render(<Textarea />);

    expect(textarea.container.querySelector('textarea.form-control')).not.toBe(
      null
    );
  });

  test('has no value by default', () => {
    const {
      container: {firstChild: textarea}
    } = render(<Textarea />);

    expect(textarea).not.toHaveValue();
  });

  test('passes value on to the underlying HTML textarea', () => {
    const {
      container: {firstChild: textarea},
      rerender
    } = render(<Textarea value="some-textarea-value" />);

    expect(textarea).toHaveValue('some-textarea-value');

    rerender(<Textarea value="another-textarea-value" />);
    expect(textarea).toHaveValue('another-textarea-value');
  });

  test('passes HTML attributes on to underlying textarea', () => {
    const {
      container: {firstChild: textarea}
    } = render(
      <Textarea
        accesskey="k"
        cols="33"
        dir="ltr"
        disabled
        draggable
        form="form-id"
        lang="en-GB"
        maxlength="20"
        minlength="2"
        name="test-name"
        placeholder="test-placeholder"
        readonly
        required
        rows="6"
        spellcheck
        tabindex="3"
        title="test-title"
        wrap="hard"
      />
    );

    expect(textarea).toHaveAttribute('accesskey', 'k');
    expect(textarea).toHaveAttribute('cols', '33');
    expect(textarea).toHaveAttribute('dir', 'ltr');
    expect(textarea).toHaveAttribute('disabled');
    expect(textarea).toHaveAttribute('draggable', 'true');
    expect(textarea).toHaveAttribute('form', 'form-id');
    expect(textarea).toHaveAttribute('lang', 'en-GB');
    expect(textarea).toHaveAttribute('maxlength', '20');
    expect(textarea).toHaveAttribute('minlength', '2');
    expect(textarea).toHaveAttribute('name', 'test-name');
    expect(textarea).toHaveAttribute('placeholder', 'test-placeholder');
    expect(textarea).toHaveAttribute('readonly');
    expect(textarea).toHaveAttribute('spellcheck');
    expect(textarea).toHaveAttribute('tabindex', '3');
    expect(textarea).toHaveAttribute('title', 'test-title');
    expect(textarea).toHaveAttribute('wrap', 'hard');
  });

  test('sets validity using "valid" and "invalid" props', () => {
    const validTextarea = render(<Textarea valid />);
    const invalidTextarea = render(<Textarea invalid />);

    expect(validTextarea.container.firstChild).toHaveClass('is-valid');
    expect(invalidTextarea.container.firstChild).toHaveClass('is-invalid');
  });

  describe('setProps', () => {
    let textarea, mockSetProps;

    beforeEach(() => {
      mockSetProps = jest.fn();
      const {container} = render(<Textarea setProps={mockSetProps} />);
      textarea = container.firstChild;
    });

    test('tracks changes with "value" prop', async () => {
      const user = userEvent.setup();
      await user.type(textarea, 'some text');
      // one setProps call for click, and then 9 characters
      expect(mockSetProps.mock.calls).toHaveLength(10);
      expect(mockSetProps.mock.calls[9][0]).toEqual({value: 'some text'});
      expect(textarea).toHaveValue('some text');
    });

    test('dispatches update for each typed character', async () => {
      const user = userEvent.setup();
      await user.type(textarea, 'abc');

      expect(textarea).toHaveValue('abc');
      expect(mockSetProps.mock.calls).toHaveLength(4);

      const [call0, call1, call2, call3] = mockSetProps.mock.calls;

      // first call is for the click event
      expect(call0).toEqual([{n_clicks: 1}]);
      expect(call1).toEqual([{value: 'a'}]);
      expect(call2).toEqual([{value: 'ab'}]);
      expect(call3).toEqual([{value: 'abc'}]);
    });

    test('track number of blurs with "n_blur"', () => {
      fireEvent.blur(textarea);

      expect(mockSetProps.mock.calls).toHaveLength(1);

      const [[{n_blur}]] = mockSetProps.mock.calls;
      expect(n_blur).toEqual(1);
    });

    test('tracks submit with "n_submit"', () => {
      fireEvent.keyUp(textarea, {key: 'Enter', code: 13, charCode: 13});

      expect(mockSetProps.mock.calls).toHaveLength(1);

      const [[{n_submit}]] = mockSetProps.mock.calls;
      expect(n_submit).toEqual(1);
    });

    test("don't increment n_submit if key is not Enter", () => {
      fireEvent.keyUp(textarea, {key: 'a', code: 65, charCode: 65});
      expect(mockSetProps.mock.calls).toHaveLength(0);
    });

    test("don't increment n_submit if submit_on_enter is false", () => {
      mockSetProps = jest.fn();
      const {
        container: {firstChild: ta}
      } = render(<Textarea submit_on_enter={false} setProps={mockSetProps} />);
      fireEvent.keyUp(ta, {key: 'Enter', code: 13, charCode: 13});
      expect(mockSetProps.mock.calls).toHaveLength(0);
    });

    describe('debounce', () => {
      let textarea, mockSetProps;
      beforeEach(() => {
        mockSetProps = jest.fn();
        const {container} = render(
          <Textarea setProps={mockSetProps} value="" debounce />
        );
        textarea = container.firstChild;
      });

      test("don't call setProps on change if debounce is true", async () => {
        const user = userEvent.setup();
        await user.type(textarea, 'some text');
        // one call to setProps for clicking on the textarea
        expect(mockSetProps.mock.calls).toHaveLength(1);
        expect(textarea).toHaveValue('some text');
      });

      test('dispatch value on blur if debounce is true', async () => {
        const user = userEvent.setup();
        await user.type(textarea, 'some text');
        fireEvent.blur(textarea);

        expect(mockSetProps.mock.calls).toHaveLength(2);

        const [{n_blur, value}] = mockSetProps.mock.calls[1];
        expect(n_blur).toEqual(1);
        expect(value).toEqual('some text');
      });

      test('dispatch value on submit if debounce is true', async () => {
        const user = userEvent.setup();

        await user.type(textarea, 'some text{enter}');

        // one click and one submit
        expect(mockSetProps.mock.calls).toHaveLength(2);

        const [{n_submit, value}] = mockSetProps.mock.calls[1];
        expect(n_submit).toEqual(1);
        expect(value).toEqual('some text\n');
      });

      test('submit not dispatched if shift+enter pressed', async () => {
        const user = userEvent.setup();
        await user.type(
          textarea,
          'some text{shift>}{enter}{/shift}some more text'
        );
        // one click, no submits
        expect(mockSetProps.mock.calls).toHaveLength(1);
      });
    });

    describe('numeric debounce', () => {
      let textarea, mockSetProps;

      beforeEach(() => {
        jest.useFakeTimers();
        mockSetProps = jest.fn();
        const {container} = render(
          <Textarea setProps={mockSetProps} value="" debounce={2000} />
        );
        textarea = container.firstChild;
      });

      test('call setProps after delay if debounce is number', () => {
        fireEvent.change(textarea, {
          target: {value: 'some-input-value'}
        });
        expect(mockSetProps.mock.calls).toHaveLength(0);
        expect(textarea).toHaveValue('some-input-value');
        act(() => jest.advanceTimersByTime(1000));
        expect(mockSetProps.mock.calls).toHaveLength(0);
        act(() => jest.advanceTimersByTime(1000));
        expect(mockSetProps.mock.calls).toHaveLength(1);
      });
    });
  });
});
