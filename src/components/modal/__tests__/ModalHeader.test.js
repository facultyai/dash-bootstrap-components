/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import ModalHeader from '../ModalHeader';

describe('ModalHeader', () => {
  test('renders a div with class "modal-header"', () => {
    const modalHeader = render(<ModalHeader />);

    expect(modalHeader.container.querySelector('div.modal-header')).not.toBe(
      null
    );
  });

  test('renders its content', () => {
    const modalHeader = render(
      <ModalHeader>Some modal header content</ModalHeader>
    );

    expect(modalHeader.container).toHaveTextContent(
      'Some modal header content'
    );
  });
});
