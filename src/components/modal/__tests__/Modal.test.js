/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render, fireEvent} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Modal from '../Modal';
import ModalBody from '../ModalBody';

jest.useFakeTimers();

describe('Modal', () => {
  test('renders a div with class "modal"', () => {
    render(<Modal is_open />);

    expect(document.body.querySelector('div.modal')).not.toBe(null);
  });

  test('toggle visibility with "is_open"', () => {
    const {rerender} = render(<Modal />);

    expect(document.body.querySelector('.modal')).toBe(null);

    rerender(<Modal is_open />);
    jest.runAllTimers();

    expect(document.body.querySelector('.modal')).not.toBe(null);

    rerender(<Modal />);
    jest.runAllTimers();

    expect(document.body.querySelector('.modal')).toBe(null);
  });

  test('renders its content', () => {
    render(<Modal is_open>Some modal content</Modal>);
    expect(document.body.querySelector('.modal')).toHaveTextContent(
      'Some modal content'
    );
  });

  test('applies additional CSS classes with props', () => {
    // scrollable content
    const {rerender} = render(<Modal is_open scrollable />);
    expect(document.body.querySelector('.modal-dialog')).toHaveClass(
      'modal-dialog-scrollable'
    );

    // centered modal
    rerender(<Modal is_open centered />);
    expect(document.body.querySelector('.modal-dialog')).toHaveClass(
      'modal-dialog-centered'
    );

    // modal size
    rerender(<Modal is_open size="sm" />);
    expect(document.body.querySelector('.modal-dialog')).toHaveClass(
      'modal-sm'
    );

    rerender(<Modal is_open size="lg" />);
    expect(document.body.querySelector('.modal-dialog')).toHaveClass(
      'modal-lg'
    );

    rerender(<Modal is_open size="xl" />);
    expect(document.body.querySelector('.modal-dialog')).toHaveClass(
      'modal-xl'
    );

    // Content class name
    rerender(<Modal is_open content_class_name="custom-modal-content" />);
    expect(document.body.querySelector('.modal-content')).toHaveClass(
      'custom-modal-content'
    );

    // Backdrop class name
    rerender(<Modal is_open backdrop_class_name="custom-modal-backdrop" />);
    expect(document.body.querySelector('.modal-backdrop')).toHaveClass(
      'custom-modal-backdrop'
    );

    // Dialog class name
    rerender(<Modal is_open class_name="custom-modal-dialog" />);
    expect(document.body.querySelector('.modal-dialog')).toHaveClass(
      'custom-modal-dialog'
    );

    // Modal class name
    rerender(<Modal is_open modal_class_name="custom-modal-class" />);
    expect(document.body.querySelector('.modal')).toHaveClass(
      'custom-modal-class'
    );
  });

  test('sets z-index with zindex and zIndex', () => {
    // scrollable content
    const {rerender} = render(<Modal is_open zindex={1234} />);

    expect(document.body.querySelector('.modal')).toHaveStyle({zIndex: 1234});
    expect(document.body.querySelector('.modal-backdrop')).toHaveStyle({
      zIndex: 1234
    });

    rerender(<Modal is_open zIndex={1111} />);
    expect(document.body.querySelector('.modal')).toHaveStyle({zIndex: 1111});
    expect(document.body.querySelector('.modal-backdrop')).toHaveStyle({
      zIndex: 1111
    });

    rerender(<Modal is_open zIndex={1221} zindex={1331} />);
    expect(document.body.querySelector('.modal')).toHaveStyle({zIndex: 1331});
    expect(document.body.querySelector('.modal-backdrop')).toHaveStyle({
      zIndex: 1331
    });
  });

  describe('backdrop', () => {
    test('when backdrop is True, clicking will dismiss modal', () => {
      const mockSetProps = jest.fn();
      const {rerender} = render(<Modal is_open setProps={mockSetProps} />);

      const backdrop = document.body.querySelector('.modal-backdrop');
      expect(backdrop).not.toBe(null);

      userEvent.click(document.body.querySelector('.modal'));

      rerender(<Modal {...mockSetProps.mock.calls[0][0]} />);
      jest.runAllTimers();

      expect(document.body.querySelector('.modal')).toBe(null);
    });

    test('when backdrop is False, nothing is rendered', () => {
      render(<Modal is_open backdrop={false} />);

      expect(document.body.querySelector('.modal-backdrop')).toBe(null);
    });

    test('when backdrop is "static", a backdrop is rendered, but does not dismiss the modal on click', () => {
      const mockSetProps = jest.fn();
      render(<Modal is_open backdrop="static" setProps={mockSetProps} />);

      const backdrop = document.body.querySelector('.modal-backdrop');
      expect(backdrop).not.toBe(null);

      userEvent.click(document.body.querySelector('.modal'));

      expect(mockSetProps.mock.calls).toHaveLength(0);

      expect(document.body.querySelector('.modal')).not.toBe(null);
    });
  });
});
