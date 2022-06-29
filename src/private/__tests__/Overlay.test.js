/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import Overlay from '../Overlay';
jest.useFakeTimers();

const CustomChild = React.forwardRef((props, ref) => (
  <div ref={ref} id="content">
    Some test content
  </div>
));

describe('Overlay with dict id', () => {
  // this is just a little hack to silence a warning that we'll get until we
  // upgrade to 16.9. See also: https://github.com/facebook/react/pull/14853
  const originalError = console.error;
  beforeAll(() => {
    console.error = (...args) => {
      if (/Warning.*not wrapped in act/.test(args[0])) {
        return;
      }
      originalError.call(console, ...args);
    };
  });

  afterAll(() => {
    console.error = originalError;
  });

  let div;
  beforeAll(() => {
    div = document.createElement('div');
    div.setAttribute('id', '{"index":1,"type":"target"}');
  });

  test('renders nothing by default', () => {
    render(
      <Overlay target={{type: 'target', index: 1}}>
        <CustomChild />
      </Overlay>,
      {
        container: document.body.appendChild(div)
      }
    );

    expect(document.body.querySelector('#content')).toBe(null);
  });

  test('renders its content', () => {
    render(
      <Overlay defaultShow target={{type: 'target', index: 1}}>
        <CustomChild />
      </Overlay>,
      {
        container: document.body.appendChild(div)
      }
    );

    jest.runAllTimers();

    expect(document.body.querySelector('#content')).not.toBe(null);
  });
});
