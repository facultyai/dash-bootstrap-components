/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import Collapse from '../Collapse';

jest.useFakeTimers();

describe('Collapse', () => {
  test('renders a div with class "collapse"', () => {
    const collapse = render(
      <Collapse>
        <div>Content</div>
      </Collapse>
    );

    expect(collapse.container.querySelector('div.collapse')).not.toBe(null);
  });

  test('renders its content', () => {
    const collapse = render(
      <Collapse>
        <div>Some collapse content</div>
      </Collapse>
    );

    expect(collapse.container).toHaveTextContent('Some collapse content');
  });

  test('can be collapsed with "is_open"', () => {
    const collapse = render(
      <Collapse is_open={false}>
        <div>Content</div>
      </Collapse>
    );
    expect(collapse.container.querySelector('div.collapse.show')).toBe(null);

    // toggle is_open, check for "collapsing" class
    collapse.rerender(
      <Collapse is_open>
        <div>Content</div>
      </Collapse>
    );
    expect(collapse.container.querySelector('div.collapsing')).not.toBe(null);
    jest.runAllTimers();

    expect(collapse.container.querySelector('div.collapse.show')).not.toBe(
      null
    );
  });

  test('default dimension is height', () => {
    const {
      container: {firstChild: collapse}
    } = render(
      <Collapse>
        <div>Some collapse content</div>
      </Collapse>
    );

    expect(collapse).not.toHaveClass('collapse-horizontal');
  });

  test('dimension changes the way the collapse is animated', () => {
    const {
      container: {firstChild: collapse}
    } = render(
      <Collapse dimension="width">
        <div>Some collapse content</div>
      </Collapse>
    );

    expect(collapse).toHaveClass('collapse-horizontal');
  });
});
