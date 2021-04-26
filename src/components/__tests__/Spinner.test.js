import React from 'react';
import {act, render} from '@testing-library/react';
import Spinner from '../Spinner';

jest.useFakeTimers();

describe('Spinner', () => {
  test('renders a div with class "border-spinner"', () => {
    const spinner = render(<Spinner />);

    expect(spinner.container.querySelector('div.spinner-border')).not.toBe(
      null
    );
  });

  test("renders its content if object isn't loading", () => {
    const {container: container, rerender} = render(
      <Spinner>Some spinner content</Spinner>
    );

    expect(container).toHaveTextContent('Some spinner content');
        expect(container.querySelector('div.spinner-border')).toBe(null);

    rerender(
      <Spinner loading_state={{is_loading: true}}>Some spinner content</Spinner>
    );

    const overAll = container.firstChild;
    const spinner = overAll.lastChild;

    expect(overAll).toHaveTextContent('Some spinner content');
    expect(spinner.firstChild).toHaveClass('spinner-border');
  });

  test('applies additional CSS classes when props are set', () => {
    // grow spinner
    const {
      container: {firstChild: spinner}
    } = render(<Spinner type="grow" />);

    expect(spinner).toHaveClass('spinner-grow');

    // spinner sizes
    const {
      container: {firstChild: spinnerSm}
    } = render(<Spinner size="sm" />);
    const {
      container: {firstChild: spinnerLg}
    } = render(<Spinner size="lg" />);

    expect(spinnerSm).toHaveClass('spinner-border-sm');
    expect(spinnerLg).toHaveClass('spinner-border-lg');
  });

  test('applies contextual colors with "color" prop', () => {
    const {
      container: {firstChild: spinnerPrimary}
    } = render(<Spinner color="primary" />);
    const {
      container: {firstChild: spinnerSuccess}
    } = render(<Spinner color="success" />);
    const {
      container: {firstChild: spinnerDark}
    } = render(<Spinner color="dark" />);

    expect(spinnerPrimary).toHaveClass('text-primary');
    expect(spinnerSuccess).toHaveClass('text-success');
    expect(spinnerDark).toHaveClass('text-dark');
  });

  test('spinner can be debounced with debounce prop', () => {
    const {container: container, rerender} = render(
      <Spinner loading_state={{is_loading: true}} debounce={1000}>
        Some spinner content
      </Spinner>
    );

    const overAll = container.firstChild;
    const spinner = overAll.lastChild;

    expect(overAll).toHaveTextContent('Some spinner content');
    expect(spinner.firstChild).toHaveClass('spinner-border');

    rerender(
      <Spinner loading_state={{is_loading: false}} debounce={1000}>
        Some spinner content
      </Spinner>
    );

    expect(overAll).toHaveTextContent('Some spinner content');
    expect(spinner.firstChild).toHaveClass('spinner-border');

    act(() => jest.advanceTimersByTime(1000));

    expect(container.querySelector('div.spinner-border')).toBe(null);
  });
});
