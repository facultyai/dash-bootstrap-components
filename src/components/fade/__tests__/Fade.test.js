/**
 * @jest-environment jsdom
 */
import React from 'react';

import {act, render, waitFor} from '@testing-library/react';

import Fade from '../Fade';

jest.useFakeTimers();

describe('Fade', () => {
  test('renders a div with class "fade"', async () => {
    let fade;
    await act(async () => {
      fade = render(<Fade>Some fade content</Fade>);
    });

    expect(fade.container.querySelector('div.fade')).not.toBe(null);
  });

  test('renders its content', async () => {
    let fade;
    await act(async () => {
      fade = render(<Fade>Some fade content</Fade>);
    });

    expect(fade.container).toHaveTextContent('Some fade content');
  });

  test('can be faded with "is_in"', async () => {
    let fade;
    await act(async () => {
      fade = render(<Fade is_in={false}>Some fade content</Fade>);
    });
    expect(fade.container.querySelector('div.fade.show')).toBe(null);

    await act(async () => fade.rerender(<Fade is_in>Some fade content</Fade>));
    act(() => jest.runAllTimers());

    expect(fade.container.querySelector('div.fade.show')).not.toBe(null);
  });

  test('sets visibility hidden when is_in is false and not transitioning', async () => {
    let fade;
    await act(async () => {
      fade = render(
        <Fade is_in={false} timeout={1000}>
          Some fade content
        </Fade>
      );
    });

    expect(fade.container.firstChild).toHaveStyle('visibility:hidden');
    await act(async () =>
      fade.rerender(
        <Fade is_in timeout={1000}>
          Some fade content
        </Fade>
      )
    );
    expect(fade.container.firstChild).not.toHaveStyle('visibility:hidden');
    act(() => jest.runAllTimers());
    expect(fade.container.firstChild).not.toHaveStyle('visibility:hidden');

    await act(async () =>
      fade.rerender(
        <Fade is_in={false} timeout={1000}>
          Some fade content
        </Fade>
      )
    );
    expect(fade.container.firstChild).not.toHaveStyle('visibility:hidden');
    act(() => jest.runAllTimers());
    await waitFor(() =>
      expect(fade.container.firstChild).toHaveStyle('visibility:hidden')
    );
  });
});
