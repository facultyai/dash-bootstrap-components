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
    // TODO: Check body style="overflow: hidden;" when scrollable=false (default)
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
  });
});
