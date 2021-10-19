/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import FormFeedback from '../FormFeedback';

describe('FormFeedback', () => {
  test('renders a div with class "invalid-text"', () => {
    const formFeedback = render(<FormFeedback />);
    const formFeedbackValid = render(<FormFeedback type="valid" />);
    const formFeedbackInvalid = render(<FormFeedback type="invalid" />);

    expect(formFeedback.container.querySelector('.valid-feedback')).not.toBe(
      null
    );
    expect(
      formFeedbackValid.container.querySelector('.valid-feedback')
    ).not.toBe(null);
    expect(
      formFeedbackInvalid.container.querySelector('.invalid-feedback')
    ).not.toBe(null);
  });

  test('renders its content', () => {
    const formFeedback = render(
      <FormFeedback>Some form feedback content</FormFeedback>
    );

    expect(formFeedback.container).toHaveTextContent(
      'Some form feedback content'
    );
  });

  test('renders a tooltip with "tooltip" prop', () => {
    const formFeedback = render(<FormFeedback tooltip />);
    const formFeedbackValid = render(<FormFeedback type="valid" tooltip />);
    const formFeedbackInvalid = render(<FormFeedback type="invalid" tooltip />);

    expect(formFeedback.container.querySelector('.valid-tooltip')).not.toBe(
      null
    );
    expect(
      formFeedbackValid.container.querySelector('.valid-tooltip')
    ).not.toBe(null);
    expect(
      formFeedbackInvalid.container.querySelector('.invalid-tooltip')
    ).not.toBe(null);
  });
});
