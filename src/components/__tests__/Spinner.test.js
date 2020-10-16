import React from 'react';
import {render} from '@testing-library/react';
import Spinner from '../Spinner';

describe('Spinner', () => {
  test('renders a div with class "border-spinner"', () => {
    const spinner = render(<Spinner />);

    expect(spinner.container.querySelector('div.spinner-border')).not.toBe(
      null
    );
  });

  test("renders its content if object isn't loading", () => {
    const {container: All, rerender} = render(
      <Spinner>Some spinner content</Spinner>
    );

    expect(All).toHaveTextContent('Some spinner content');

    rerender(
      <Spinner loading_state={{is_loading: true}}>Some spinner content</Spinner>
    );

    const overAll = All.firstChild;
    const spinner = overAll.lastChild;

    expect(overAll).toHaveTextContent('Some spinner content');
    expect(spinner.firstChild).toHaveClass('spinner-border');
  });

  test('applies additional CSS classes when props are set', () => {
    // grow spinner
    const {
      container: {firstChild: overAll}
    } = render(<Spinner type="grow" />);
    const spinner = overAll.lastChild;

    expect(spinner.firstChild).toHaveClass('spinner-grow');

    // spinner sizes
    const {
      container: {
        firstChild: {
          firstChild: {firstChild: spinnerSm}
        }
      }
    } = render(<Spinner size="sm" />);
    const {
      container: {
        firstChild: {
          firstChild: {firstChild: spinnerLg}
        }
      }
    } = render(<Spinner size="lg" />);

    expect(spinnerSm).toHaveClass('spinner-border-sm');
    expect(spinnerLg).toHaveClass('spinner-border-lg');
  });

  test('applies contextual colors with "color" prop', () => {
    const {
      container: {
        firstChild: {
          firstChild: {firstChild: spinnerPrimary}
        }
      }
    } = render(<Spinner color="primary" />);
    const {
      container: {
        firstChild: {
          firstChild: {firstChild: spinnerSuccess}
        }
      }
    } = render(<Spinner color="success" />);
    const {
      container: {
        firstChild: {
          firstChild: {firstChild: spinnerDark}
        }
      }
    } = render(<Spinner color="dark" />);

    expect(spinnerPrimary).toHaveClass('text-primary');
    expect(spinnerSuccess).toHaveClass('text-success');
    expect(spinnerDark).toHaveClass('text-dark');
  });
});
