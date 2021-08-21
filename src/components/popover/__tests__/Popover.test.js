import React from 'react';
import {render} from '@testing-library/react';
import Popover from '../Popover';

describe('Popover', () => {
  let div;

  beforeAll(() => {
    div = document.createElement('div');
    div.setAttribute('id', 'test-target');
  });

  test('renders a div with class "popover"', () => {
    render(<Popover target="test-target" is_open />, {
      container: document.body.appendChild(div)
    });

    expect(document.body.querySelector('.popover')).not.toBe(null);
  });

  test('renders nothing if is_open=false', () => {
    render(<Popover target="test-target" is_open={false} />, {
      container: document.body.appendChild(div)
    });

    expect(document.body.querySelector('.popover')).toBe(null);
  });

  test('renders its content', () => {
    render(
      <Popover target="test-target" is_open={true}>
        Popover content
      </Popover>,
      {container: document.body.appendChild(div)}
    );

    expect(document.body.querySelector('.popover')).toHaveTextContent(
      'Popover content'
    );
  });
});
