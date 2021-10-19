/**
 * @jest-environment jsdom
 */

import React from 'react';
import {act, render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Toast from '../Toast';

jest.useFakeTimers();

describe('Toast', () => {
  test('renders a div with class "toast"', () => {
    const toast = render(<Toast />);

    expect(toast.container.querySelector('div.toast')).not.toBe(null);
    expect(toast.container.querySelector('div.toast-header')).not.toBe(null);
    expect(toast.container.querySelector('div.toast-body')).not.toBe(null);
  });

  test('renders its content', () => {
    const toast = render(
      <Toast header="Some toast header content">Some toast body content</Toast>
    );

    expect(toast.container.querySelector('.toast-header')).toHaveTextContent(
      'Some toast header content'
    );
    expect(toast.container.querySelector('.toast-body')).toHaveTextContent(
      'Some toast body content'
    );
  });

  test('does not render if is_open=false', () => {
    const toast = render(<Toast is_open={false} />);

    expect(toast.container.querySelector('.toast')).toBe(null);
  });

  test('renders an icon with "icon" prop', () => {
    const toastPrimary = render(<Toast icon="primary" />);
    const toastSuccess = render(<Toast icon="success" />);
    const toastDark = render(<Toast icon="dark" />);

    expect(
      toastPrimary.container.querySelector('.toast-header').firstChild
    ).toHaveClass('text-primary');
    expect(
      toastSuccess.container.querySelector('.toast-header').firstChild
    ).toHaveClass('text-success');
    expect(
      toastDark.container.querySelector('.toast-header').firstChild
    ).toHaveClass('text-dark');
  });

  test('sets the background color with "color" prop', () => {
    const toastPrimary = render(<Toast color="primary" />);
    const toastSuccess = render(<Toast color="success" />);
    const toastDark = render(<Toast color="dark" />);

    expect(toastPrimary.container.firstChild).toHaveClass('bg-primary');
    expect(toastSuccess.container.firstChild).toHaveClass('bg-success');
    expect(toastDark.container.firstChild).toHaveClass('bg-dark');
  });

  test('renders a dismiss button with dismissable=true', () => {
    const toastDismissable = render(<Toast dismissable />);

    expect(
      toastDismissable.container.querySelector('button.btn-close')
    ).not.toBe(null);
  });

  test('tracks clicks on dismiss button with n_dismiss', () => {
    const mockSetProps = jest.fn();
    const toast = render(
      <Toast setProps={mockSetProps} header="header" dismissable />
    );

    expect(mockSetProps.mock.calls).toHaveLength(0);

    userEvent.click(toast.container.querySelector('.btn-close'));

    expect(mockSetProps.mock.calls).toHaveLength(1);
    expect(mockSetProps.mock.calls[0][0].n_dismiss).toBe(1);
  });

  test('self dismisses if duration is set', () => {
    const mockSetProps = jest.fn();
    const toast = render(<Toast duration={5000} setProps={mockSetProps} />);

    // toast exists and timeout is set with duration 5000
    expect(toast.container.querySelector('.toast')).not.toBe(null);

    act(() => jest.advanceTimersByTime(4000));
    // toast hasn't dismissed yet
    expect(mockSetProps.mock.calls).toHaveLength(0);

    act(() => jest.advanceTimersByTime(1000));
    // toast has dismissed
    expect(mockSetProps.mock.calls).toHaveLength(1);
    expect(mockSetProps.mock.calls[0][0].is_open).toEqual(false);

    toast.rerender(
      <Toast duration={5000} setProps={mockSetProps} is_open={false} />
    );

    // necessary to skip fade animation
    act(() => jest.runAllTimers());

    // after timeout has run toast no longer displays
    expect(toast.container.querySelector('.toast')).toBe(null);
  });
});
