/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import ModalFooter from '../ModalFooter';

describe('ModalFooter', () => {
  test('renders a div with class "modal-footer"', () => {
    const modalFooter = render(<ModalFooter />);

    expect(modalFooter.container.querySelector('div.modal-footer')).not.toBe(
      null
    );
  });

  test('renders its content', () => {
    const modalFooter = render(
      <ModalFooter>Some modal footer content</ModalFooter>
    );

    expect(modalFooter.container).toHaveTextContent(
      'Some modal footer content'
    );
  });
});
