import React from 'react';
import {act, render} from '@testing-library/react';
import Alert from '../Alert';

jest.useFakeTimers();

describe('Alert', () => {
  test('renders a div with class "alert"', () => {
    const alert = render(<Alert />);

    expect(alert.container.querySelector('div.alert')).not.toBe(null);
  });

  test('renders its content', () => {
    const alert = render(<Alert>Some alert content</Alert>);

    expect(alert.container).toHaveTextContent('Some alert content');
  });

  test('does not render if is_open=false', () => {
    const alert = render(<Alert is_open={false} />);

    expect(alert.container.querySelector('.alert')).toBe(null);
  });

  test('applies contextual colors with "color" prop', () => {
    const {
      container: {firstChild: alertPrimary}
    } = render(<Alert color="primary" />);
    const {
      container: {firstChild: alertSuccess}
    } = render(<Alert color="success" />);
    const {
      container: {firstChild: alertDark}
    } = render(<Alert color="dark" />);

    expect(alertPrimary).toHaveClass('alert-primary');
    expect(alertSuccess).toHaveClass('alert-success');
    expect(alertDark).toHaveClass('alert-dark');
  });

  test('renders a dismiss button with dismissable=true', () => {
    const alertDismissable = render(<Alert dismissable />);

    expect(alertDismissable.container.querySelector('button.close')).not.toBe(
      null
    );
  });

  test('self dismisses if duration is set', () => {
    const alert = render(<Alert duration={5000} />);

    // alert exists and timeout is set with duration 5000
    expect(alert.container.querySelector('.alert')).not.toBe(null);
    expect(setTimeout).toHaveBeenCalledWith(expect.any(Function), 5000);

    act(() => jest.runAllTimers());

    // after timeout has run alert no longer displays
    expect(alert.container.querySelector('.alert')).toBe(null);
  });
});
