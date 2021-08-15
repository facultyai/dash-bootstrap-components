import React from 'react';
import {render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Offcanvas from '../Offcanvas';

jest.useFakeTimers();

describe('Offcanvas', () => {
  test('renders a div with class "offcanvas"', () => {
    render(<Offcanvas is_open />);

    expect(document.body.querySelector('div.offcanvas')).not.toBe(null);
  });

  test('renders the header with class "offcanvas-header"', () => {
    // Check the offcanvas has a header with a close button by default
    const {rerender} = render(<Offcanvas is_open />);
    expect(document.body.querySelector('div.offcanvas-header')).not.toBe(null);
    // Check the offcanvas-header div contains a button with class btn-close
    // TODO: Check syntax here
    expect(
      document.body
        .querySelector('div.offcanvas-header')
        .querySelector('button.btn-close')
    ).not.toBe(null);

    // Check that the header title renders as expected
    rerender(<Offcanvas is_open title="Test Title" />);
    jest.runAllTimers();
    expect(
      document.body.querySelector('div.offcanvas-title')
    ).toHaveTextContent('Test Title');

    // Check no header appears when there is no title or close button
    rerender(<Offcanvas is_open close_button={false} />);
    jest.runAllTimers();
    expect(document.body.querySelector('div.offcanvas-header')).toBe(null);
  });

  test('renders the body with class "offcanvas-body"', () => {
    // Check the offcanvas has a body
    const {rerender} = render(<Offcanvas is_open />);
    expect(document.body.querySelector('div.offcanvas-body')).not.toBe(null);

    // Check that the body content renders as expected
    rerender(<Offcanvas is_open>Some offcanvas body content</Offcanvas>);
    jest.runAllTimers();
    expect(document.body.querySelector('div.offcanvas-body')).toHaveTextContent(
      'Some offcanvas body content'
    );
  });

  test('toggle visibility with "is_open"', () => {
    const {rerender} = render(<Offcanvas />);

    expect(document.body.querySelector('.offcanvas')).toBe(null);

    rerender(<Offcanvas is_open />);
    jest.runAllTimers();

    expect(document.body.querySelector('.offcanvas')).not.toBe(null);

    rerender(<Offcanvas />);
    jest.runAllTimers();

    expect(document.body.querySelector('.offcanvas')).toBe(null);
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
      rerender(<Offcanvas is_open placement={placements[i]} />);
      expect(document.body.querySelector('.offcanvas-dialog')).toHaveClass(
        `offcanvas-${placements[i]}`
      );
    }

    // scrollable content
    const {rerender} = render(<Offcanvas is_open />);
    // Check body style="overflow: hidden;" when scrollable=false (default)
    expect(document.body.querySelector('.body')).toHaveStyle({
      overflow: 'hidden'
    });
  });

  describe('backdrop', () => {
    test('when backdrop is True, clicking will dismiss offcanvas', () => {
      const mockSetProps = jest.fn();
      const {rerender} = render(<Offcanvas is_open setProps={mockSetProps} />);

      // TODO: When react-bootstrap have changed this update to offcanvas-backdrop
      const backdrop = document.body.querySelector('.modal-backdrop');
      expect(backdrop).not.toBe(null);

      userEvent.click(document.body.querySelector('.offcanvas'));

      rerender(<Offcanvas {...mockSetProps.mock.calls[0][0]} />);
      jest.runAllTimers();

      expect(document.body.querySelector('.offcanvas')).toBe(null);
    });

    test('when backdrop is False, nothing is rendered', () => {
      render(<Offcanvas is_open backdrop={false} />);

      // TODO: When react-bootstrap have changed this update to offcanvas-backdrop
      expect(document.body.querySelector('.modal-backdrop')).toBe(null);
    });

    test('when backdrop is "static", a backdrop is rendered, but does not dismiss the offcanvas on click', () => {
      const mockSetProps = jest.fn();
      render(<Offcanvas is_open backdrop="static" setProps={mockSetProps} />);

      // TODO: When react-bootstrap have changed this update to offcanvas-backdrop
      const backdrop = document.body.querySelector('.modal-backdrop');
      expect(backdrop).not.toBe(null);

      // TODO: Check this - should the click not be on the backdrop?
      // Left the same as Modal test for now
      userEvent.click(document.body.querySelector('.offcanvas'));

      expect(mockSetProps.mock.calls).toHaveLength(0);

      expect(document.body.querySelector('.offcanvas')).not.toBe(null);
    });
  });
});