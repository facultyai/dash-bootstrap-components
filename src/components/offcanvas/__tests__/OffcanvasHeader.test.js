import React from 'react';
import {render} from '@testing-library/react';
import OffcanvasHeader from '../OffcanvasHeader';

describe('OffcanvasHeader', () => {
  test('renders a div with class "offcanvas-header"', () => {
    const offcanvasHeader = render(<OffcanvasHeader />);

    expect(
      offcanvasHeader.container.querySelector('div.offcanvas-header')
    ).not.toBe(null);
  });

  test('renders its content', () => {
    const offcanvasHeader = render(
      <OffcanvasHeader
        title={'Some offcanvas header content'}
      ></OffcanvasHeader>
    );

    // TODO: Check this is the right test, as the content is inside a title
    expect(offcanvasHeader.container).toHaveTextContent(
      'Some offcanvas header content'
    );
  });
});
