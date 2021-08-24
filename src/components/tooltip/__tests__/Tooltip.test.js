import React from 'react';
import {act, fireEvent, render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Tooltip from '../Tooltip';

jest.useFakeTimers();

describe('Tooltip', () => {
  // this is just a little hack to silence a warning that we'll get until we
  // upgrade to 16.9. See also: https://github.com/facebook/react/pull/14853
  const originalError = console.error;
  beforeAll(() => {
    console.error = (...args) => {
      if (/Warning.*not wrapped in act/.test(args[0])) {
        return;
      }
      originalError.call(console, ...args);
    };
  });

  afterAll(() => {
    console.error = originalError;
  });

  let div;
  beforeAll(() => {
    div = document.createElement('div');
    div.setAttribute('id', 'test-target');
  });

  test('renders nothing by default', () => {
    render(<Tooltip target="test-target">Test content</Tooltip>, {
      container: document.body.appendChild(div)
    });

    expect(document.body.querySelector('.tooltip')).toBe(null);
  });

  test('renders a div with class "tooltip"', () => {
    render(<Tooltip target="test-target" />, {
      container: document.body.appendChild(div)
    });

    fireEvent.mouseOver(div);
    act(() => jest.runAllTimers());
    expect(document.body.querySelector('.tooltip')).not.toBe(null);

    fireEvent.mouseLeave(div);
    act(() => jest.runAllTimers());
    expect(document.body.querySelector('.tooltip')).toBe(null);
  });

  test('renders its content', () => {
    render(<Tooltip target="test-target">Tooltip content</Tooltip>, {
      container: document.body.appendChild(div)
    });

    fireEvent.mouseOver(div);
    act(() => jest.runAllTimers());
    expect(document.body.querySelector('.tooltip')).toHaveTextContent(
      'Tooltip content'
    );
  });
});
