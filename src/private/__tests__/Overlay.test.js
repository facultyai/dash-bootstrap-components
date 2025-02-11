/**
 * @jest-environment jsdom
 */
import React from 'react';

import {act, render} from '@testing-library/react';

import Overlay from '../Overlay';

jest.useFakeTimers();

const CustomChild = React.forwardRef(function CustomChild(props, ref) {
  return (
    <div ref={ref} id="content">
      Some test content
    </div>
  );
});

describe('Overlay with dict id', () => {
  let div;
  beforeAll(() => {
    div = document.createElement('div');
    div.setAttribute('id', '{"index":1,"type":"target"}');
  });

  test('renders nothing by default', async () => {
    await act(async () =>
      render(
        <Overlay target={{type: 'target', index: 1}}>
          <CustomChild />
        </Overlay>,
        {
          container: document.body.appendChild(div)
        }
      )
    );

    await act(async () => jest.runAllTimers());
    expect(document.body.querySelector('#content')).toBe(null);
  });

  test('renders its content', async () => {
    await act(async () =>
      render(
        <Overlay defaultShow target={{type: 'target', index: 1}}>
          <CustomChild />
        </Overlay>,
        {
          container: document.body.appendChild(div)
        }
      )
    );

    await act(async () => jest.runAllTimers());
    expect(document.body.querySelector('#content')).not.toBe(null);
  });
});
