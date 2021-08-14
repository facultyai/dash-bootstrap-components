import React from 'react';
import {render} from '@testing-library/react';
import OffcanvasBody from '../OffcanvasBody';

describe('OffcanvasBody', () => {
  test('renders a div with class "offcanvas-body"', () => {
    const offcanvasBody = render(<OffcanvasBody />);

    expect(
      offcanvasBody.container.querySelector('div.offcanvas-body')
    ).not.toBe(null);
  });

  test('renders its content', () => {
    const offcanvasBody = render(
      <OffcanvasBody>Some offcanvas body content</OffcanvasBody>
    );

    expect(offcanvasBody.container).toHaveTextContent(
      'Some offcanvas body content'
    );
  });
});
