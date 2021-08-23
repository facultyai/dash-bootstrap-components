import React from 'react';
import {act, fireEvent, render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Tooltip from '../Tooltip';

jest.useFakeTimers();

describe('Tooltip', () => {
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

    userEvent.hover(div);
    expect(document.body.querySelector('.tooltip')).not.toBe(null);

    userEvent.unhover(div);
    expect(document.body.querySelector('.tooltip')).toBe(null);
  });

  test('renders its content', () => {
    render(<Tooltip target="test-target">Tooltip content</Tooltip>, {
      container: document.body.appendChild(div)
    });

    userEvent.hover(div);

    expect(document.body.querySelector('.tooltip')).toHaveTextContent(
      'Tooltip content'
    );
  });
});
