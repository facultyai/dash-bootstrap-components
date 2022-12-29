/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import Input from '../Input';
import InputGroup from '../InputGroup';
import InputGroupText from '../InputGroupText';

describe('InputGroup', () => {
  test('renders a div with class "input-group"', () => {
    const inputGroup = render(<InputGroup />);

    expect(inputGroup.container.querySelector('div.input-group')).not.toBe(
      null
    );
  });

  test('renders its content', () => {
    const inputGroup = render(
      <InputGroup>
        <InputGroupText>Addon</InputGroupText>
        <Input />
      </InputGroup>
    );

    expect(inputGroup.container).toHaveTextContent('Addon');
    expect(inputGroup.container.querySelector('input.form-control')).not.toBe(
      null
    );
  });

  test('applies sizing CSS classes', () => {
    // inputGroup sizes
    const {
      container: {firstChild: inputGroupSm}
    } = render(<InputGroup size="sm" />);
    const {
      container: {firstChild: inputGroupLg}
    } = render(<InputGroup size="lg" />);

    expect(inputGroupSm).toHaveClass('input-group-sm');
    expect(inputGroupLg).toHaveClass('input-group-lg');
  });
});
