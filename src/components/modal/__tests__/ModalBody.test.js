/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import ModalBody from '../ModalBody';

describe('ModalBody', () => {
  test('renders a div with class "modal-body"', () => {
    const modalBody = render(<ModalBody />);

    expect(modalBody.container.querySelector('div.modal-body')).not.toBe(null);
  });

  test('renders its content', () => {
    const modalBody = render(<ModalBody>Some modal body content</ModalBody>);

    expect(modalBody.container).toHaveTextContent('Some modal body content');
  });
});
