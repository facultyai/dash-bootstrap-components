/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import ModalTitle from '../ModalTitle';

describe('ModalTitle', () => {
  test('renders a div with class "modal-Title"', () => {
    const modalTitle = render(<ModalTitle />);

    expect(modalTitle.container.querySelector('div.modal-title')).not.toBe(
      null
    );
  });

  test('renders its content', () => {
    const modalTitle = render(
      <ModalTitle>Some modal title content</ModalTitle>
    );

    expect(modalTitle.container).toHaveTextContent('Some modal title content');
  });
});
