import React from 'react';
import {render} from '@testing-library/react';
import FormGroup from '../FormGroup';

describe('FormGroup', () => {
  test('renders its content', () => {
    const formGroup = render(<FormGroup>Some form group content</FormGroup>);

    expect(formGroup.container).toHaveTextContent('Some form group content');
  });
});
