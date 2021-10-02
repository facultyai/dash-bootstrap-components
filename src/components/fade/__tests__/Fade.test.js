/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import Fade from '../Fade';

jest.useFakeTimers();

describe('Fade', () => {
  test('renders a div with class "fade"', () => {
    const fade = render(<Fade>Some fade content</Fade>);

    expect(fade.container.querySelector('div.fade')).not.toBe(null);
  });

  test('renders its content', () => {
    const fade = render(<Fade>Some fade content</Fade>);

    expect(fade.container).toHaveTextContent('Some fade content');
  });

  test('can be faded with "is_in"', () => {
    const fade = render(<Fade is_in={false}>Some fade content</Fade>);
    expect(fade.container.querySelector('div.fade.show')).toBe(null);

    fade.rerender(<Fade is_in>Some fade content</Fade>);
    jest.runAllTimers();

    expect(fade.container.querySelector('div.fade.show')).not.toBe(null);
  });

  test('sets visibility hidden when is_in is false and not transitioning', () => {
    const fade = render(
      <Fade is_in={false} timeout={1000}>
        Some fade content
      </Fade>
    );

    expect(fade.container.firstChild).toHaveStyle('visibility:hidden');

    fade.rerender(
      <Fade is_in timeout={1000}>
        Some fade content
      </Fade>
    );
    expect(fade.container.firstChild).not.toHaveStyle('visibility:hidden');
    jest.runAllTimers();
    expect(fade.container.firstChild).not.toHaveStyle('visibility:hidden');

    fade.rerender(
      <Fade is_in={false} timeout={1000}>
        Some fade content
      </Fade>
    );
    expect(fade.container.firstChild).not.toHaveStyle('visibility:hidden');
    jest.runAllTimers();
    expect(fade.container.firstChild).toHaveStyle('visibility:hidden');
  });
});
