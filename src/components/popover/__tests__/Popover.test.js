/**
 * @jest-environment jsdom
 */
import React from 'react';

import {act, render} from '@testing-library/react';

import Popover from '../Popover';

jest.useFakeTimers();

// TODO - Add test for offset

describe('Popover', () => {
  let div;

  beforeAll(() => {
    div = document.createElement('div');
    div.setAttribute('id', 'test-target');
  });

  test('renders a div with class "popover"', async () => {
    await act(async () =>
      render(<Popover target="test-target" is_open />, {
        container: document.body.appendChild(div)
      })
    );
    await act(async () => jest.runAllTimers());
    expect(document.body.querySelector('.popover.show')).not.toBe(null);
  });

  test('renders nothing if is_open=false', async () => {
    await act(async () =>
      render(<Popover target="test-target" is_open={false} />, {
        container: document.body.appendChild(div)
      })
    );

    await act(async () => jest.runAllTimers());

    expect(document.body.querySelector('.popover.show')).toBe(null);
  });

  test('renders straight away if is_open=true', async () => {
    await act(async () =>
      render(<Popover target="test-target" is_open={true} />, {
        container: document.body.appendChild(div)
      })
    );

    await act(async () => jest.runAllTimers());

    expect(document.body.querySelector('.popover.show')).not.toBe(null);
  });

  test('renders its content', async () => {
    await act(async () =>
      render(
        <Popover target="test-target" is_open={true}>
          Popover content
        </Popover>,
        {container: document.body.appendChild(div)}
      )
    );

    await act(async () => jest.runAllTimers());

    expect(document.body.querySelector('.popover')).toHaveTextContent(
      'Popover content'
    );
  });

  test('shows arrow when hide_arrow is not specified', async () => {
    await act(async () =>
      render(<Popover target="test-target" is_open />, {
        container: document.body.appendChild(div)
      })
    );

    await act(async () => jest.runAllTimers());

    expect(document.body.querySelector('.popover-arrow')).not.toBe(null);
  });

  test('hides arrow when hide_arrow is true', async () => {
    await act(async () =>
      render(<Popover target="test-target" is_open hide_arrow />, {
        container: document.body.appendChild(div)
      })
    );

    await act(async () => jest.runAllTimers());

    expect(document.body.querySelector('.popover-arrow')).toBe(null);
  });

  test('popover-body automatically added with body', async () => {
    await act(async () =>
      render(
        <Popover target="test-target" is_open body>
          Test Text
        </Popover>,
        {
          container: document.body.appendChild(div)
        }
      )
    );

    await act(async () => jest.runAllTimers());

    expect(document.body.querySelector('.popover-body')).not.toBe(null);
  });

  test('popover-body not added with body=false', async () => {
    await act(async () =>
      render(
        <Popover target="test-target" is_open>
          Test Text
        </Popover>,
        {
          container: document.body.appendChild(div)
        }
      )
    );

    await act(async () => jest.runAllTimers());

    expect(document.body.querySelector('.popover-body')).toBe(null);
  });
});
