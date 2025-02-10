/**
 * @jest-environment jsdom
 */
import React from 'react';

import {act, fireEvent, render, waitFor} from '@testing-library/react';

import Offcanvas from '../Offcanvas';

// https://jestjs.io/docs/manual-mocks#mocking-methods-which-are-not-implemented-in-jsdom
Object.defineProperty(window, 'matchMedia', {
  writable: true,
  value: jest.fn().mockImplementation(query => ({
    matches: false,
    media: query,
    onchange: null,
    addListener: jest.fn(), // deprecated
    removeListener: jest.fn(), // deprecated
    addEventListener: jest.fn(),
    removeEventListener: jest.fn(),
    dispatchEvent: jest.fn()
  }))
});

jest.useFakeTimers();

describe('Offcanvas', () => {
  let div;
  beforeAll(() => {
    div = document.createElement('div');
    div.setAttribute('id', 'test-target');
  });

  test('renders a div with class "offcanvas"', () => {
    render(<Offcanvas is_open />);

    expect(document.body.querySelector('div.offcanvas')).not.toBe(null);
  });

  test('renders the header with class "offcanvas-header"', async () => {
    // Check the offcanvas has a header with a close button by default
    const {rerender} = render(<Offcanvas is_open />);
    expect(document.body.querySelector('div.offcanvas-header')).not.toBe(null);
    // Check the offcanvas-header div contains a button with class btn-close
    expect(
      document.body.querySelector('div.offcanvas-header > button.btn-close')
    ).not.toBe(null);

    // Check that the header title renders as expected
    await act(async () => rerender(<Offcanvas is_open title="Test Title" />));
    await waitFor(async () =>
      expect(
        document.body.querySelector('div.offcanvas-title')
      ).toHaveTextContent('Test Title')
    );

    // Check no header appears when there is no title or close button
    await act(async () => rerender(<Offcanvas is_open close_button={false} />));
    await waitFor(() =>
      expect(document.body.querySelector('div.offcanvas-header')).toBe(null)
    );
  });

  test('renders the body with class "offcanvas-body"', async () => {
    // Check the offcanvas has a body
    const {rerender} = render(<Offcanvas is_open />);
    expect(document.body.querySelector('div.offcanvas-body')).not.toBe(null);

    // Check that the body content renders as expected
    await act(async () =>
      rerender(<Offcanvas is_open>Some offcanvas body content</Offcanvas>)
    );
    await waitFor(() =>
      expect(
        document.body.querySelector('div.offcanvas-body')
      ).toHaveTextContent('Some offcanvas body content')
    );
  });

  test('toggle visibility with "is_open"', async () => {
    const {rerender} = render(<Offcanvas />);

    expect(document.body.querySelector('.offcanvas')).toBe(null);

    await act(async () => await rerender(<Offcanvas is_open />));
    await waitFor(async () =>
      expect(document.body.querySelector('.offcanvas')).not.toBe(null)
    );

    await act(async () => rerender(<Offcanvas />));
    await waitFor(async () =>
      expect(document.body.querySelector('.offcanvas')).toBe(null)
    );
  });

  test('renders its content', () => {
    render(<Offcanvas is_open>Some offcanvas content</Offcanvas>);
    expect(document.body.querySelector('.offcanvas')).toHaveTextContent(
      'Some offcanvas content'
    );
  });

  test('applies additional CSS classes with props', () => {
    // placement offcanvas
    const placements = ['end', 'top', 'bottom', 'start'];
    for (let i = 0; i < placements.length; i++) {
      render(<Offcanvas is_open placement={placements[i]} />);
      expect(
        document.body.querySelector(`.offcanvas-${placements[i]}`)
      ).not.toBe(null);
    }
  });

  describe('backdrop', () => {
    test('when backdrop is True, clicking will dismiss offcanvas', async () => {
      const mockSetProps = jest.fn();
      const {rerender} = render(<Offcanvas is_open setProps={mockSetProps} />);

      const backdrop = document.body.querySelector('.offcanvas-backdrop');
      expect(backdrop).not.toBe(null);

      fireEvent.click(document.body.querySelector('.offcanvas-backdrop'));

      await act(async () =>
        rerender(<Offcanvas {...mockSetProps.mock.calls[0][0]} />)
      );
      await waitFor(async () =>
        expect(document.body.querySelector('.offcanvas')).toBe(null)
      );
    });

    test('when backdrop is False, nothing is rendered', () => {
      render(<Offcanvas is_open backdrop={false} />);

      expect(document.body.querySelector('.offcanvas-backdrop')).toBe(null);
    });

    test('when backdrop is "static", a backdrop is rendered, but does not dismiss the offcanvas on click', async () => {
      const mockSetProps = jest.fn();
      render(<Offcanvas is_open backdrop="static" setProps={mockSetProps} />);

      const backdrop = document.body.querySelector('.offcanvas-backdrop');
      expect(backdrop).not.toBe(null);

      fireEvent.click(backdrop);
      expect(mockSetProps.mock.calls).toHaveLength(0);
      const offcanvas = document.body.querySelector('.offcanvas');
      await waitFor(async () =>
        expect(offcanvas).not.toHaveClass('offcanvas-toggling')
      );
      expect(offcanvas).not.toBe(null);
      expect(offcanvas).toHaveClass('show');
    });
  });
});
