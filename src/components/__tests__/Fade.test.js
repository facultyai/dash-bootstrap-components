import React from 'react';
import {render} from '@testing-library/react';
import Fade from '../Fade';

jest.useFakeTimers();

describe('Fade', () => {
  test('renders a div with class "fade"', () => {
    const fade = render(<Fade />);

    expect(fade.container.querySelector('div.fade')).not.toBe(null);
  });

  test('renders its content', () => {
    const fade = render(<Fade>Some fade content</Fade>);

    expect(fade.container).toHaveTextContent('Some fade content');
  });

  test('can be faded with "is_in"', () => {
    const fade = render(<Fade is_in={false} />);
    expect(fade.container.querySelector('div.fade.show')).toBe(null);

    fade.rerender(<Fade is_in />);
    jest.runAllTimers();

    expect(fade.container.querySelector('div.fade.show')).not.toBe(
      null
    );
  });
});
