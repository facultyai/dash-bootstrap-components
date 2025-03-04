/**
 * @jest-environment jsdom
 */
import React from 'react';

import {act, render} from '@testing-library/react';

import Placeholder from '../Placeholder';

jest.useFakeTimers();

describe('Placeholder', () => {
  beforeEach(() => {
    window.dash_component_api = {
      useDashContext: jest.fn(() => ({
        componentPath: [0],
        useSelector: jest.fn(() => false) // Default behavior
      }))
    };
  });

  afterEach(() => {
    delete window.dash_component_api;
  });

  test('renders a span with class "placeholder"', () => {
    const placeholder = render(<Placeholder />);

    expect(placeholder.container.querySelector('span.placeholder')).not.toBe(
      null
    );
  });

  test('renders a button with class "placeholder" when button is specified', () => {
    const placeholder = render(<Placeholder button />);

    expect(placeholder.container.querySelector('button.placeholder')).not.toBe(
      null
    );
  });

  test("renders its content if object isn't loading", () => {
    const {container: container, rerender} = render(
      <Placeholder>Some placeholder content</Placeholder>
    );

    // placeholder is initially visible until we've had time to update based on
    // loading state. this can be disabled with show_initially={false}
    act(() => jest.advanceTimersByTime(10));

    expect(container).toHaveTextContent('Some placeholder content');
    expect(container.querySelector('span.placeholder')).toBe(null);

    window.dash_component_api.useDashContext.mockImplementation(() => ({
      componentPath: [0],
      useSelector: jest.fn(() => true)
    }));

    rerender(<Placeholder>Some placeholder content</Placeholder>);

    act(() => jest.advanceTimersByTime(10));

    expect(container).toHaveTextContent('Some placeholder content');
    expect(container.querySelector('span.placeholder')).not.toBe(null);
  });

  test("doesn't show initially when show_initially is false", () => {
    const {container: container} = render(
      <Placeholder show_initially={false}>Some placeholder content</Placeholder>
    );

    expect(container).toHaveTextContent('Some placeholder content');
    expect(container.querySelector('span.placeholder')).toBe(null);
  });

  test('applies additional CSS classes when props are set', () => {
    // animate placeholder
    const {
      container: {firstChild: placeholderGlow}
    } = render(<Placeholder animation="glow" />);

    expect(placeholderGlow).toHaveClass('placeholder-glow');
    expect(placeholderGlow).toHaveClass('placeholder');

    const {
      container: {firstChild: placeholderWave}
    } = render(<Placeholder animation="wave" />);

    expect(placeholderWave).toHaveClass('placeholder-wave');
    expect(placeholderWave).toHaveClass('placeholder');

    // placeholder sizes
    const {
      container: {firstChild: placeholderSm}
    } = render(<Placeholder size="sm" />);

    expect(placeholderSm).toHaveClass('placeholder-sm');

    // placeholder styles
    const {
      container: {firstChild: placeholderStyle}
    } = render(<Placeholder style={{width: '5rem', height: '5rem'}} />);

    expect(placeholderStyle).toHaveStyle({width: '5rem', height: '5rem'});
  });

  test('applies additional CSS classes when props are set and children are present', () => {
    // animate placeholder
    const {
      container: {
        firstChild: {lastChild: placeholderGlow}
      }
    } = render(
      <Placeholder animation="glow">
        <p>Child</p>
      </Placeholder>
    );

    expect(placeholderGlow.firstChild).toHaveClass('placeholder-glow');
    expect(placeholderGlow.firstChild).toHaveClass('placeholder');

    // placeholder sizes
    const {
      container: {
        firstChild: {lastChild: placeholderSm}
      }
    } = render(
      <Placeholder size="sm">
        <p>Child</p>
      </Placeholder>
    );

    expect(placeholderSm.firstChild).toHaveClass('placeholder-sm');

    // placeholder styles
    const {
      container: {
        firstChild: {lastChild: placeholderStyle}
      }
    } = render(
      <Placeholder style={{width: '5rem', height: '5rem'}}>
        <p>Child</p>
      </Placeholder>
    );

    expect(placeholderStyle.firstChild).toHaveStyle({
      width: '5rem',
      height: '5rem'
    });
  });

  test('applies contextual colors with "color" prop', () => {
    const {
      container: {firstChild: placeholderPrimary}
    } = render(<Placeholder color="primary" />);
    const {
      container: {firstChild: placeholderSuccess}
    } = render(<Placeholder color="success" />);
    const {
      container: {firstChild: placeholderDark}
    } = render(<Placeholder color="dark" />);

    expect(placeholderPrimary).toHaveClass('bg-primary');
    expect(placeholderSuccess).toHaveClass('bg-success');
    expect(placeholderDark).toHaveClass('bg-dark');
  });

  test('display prop overrides loading state', () => {
    const {container: container, rerender} = render(
      <Placeholder display="show">Some placeholder content</Placeholder>
    );

    // placeholder is initially visible until we've had time to update based on
    // loading state. this can be disabled with show_initially={false}
    act(() => jest.advanceTimersByTime(10));

    expect(container).toHaveTextContent('Some placeholder content');
    expect(container.querySelector('span.placeholder')).not.toBe(null);

    window.dash_component_api.useDashContext.mockImplementation(() => ({
      componentPath: [0],
      useSelector: jest.fn(() => true)
    }));

    rerender(
      <Placeholder display="hide">Some placeholder content</Placeholder>
    );

    act(() => jest.advanceTimersByTime(10));

    expect(container).toHaveTextContent('Some placeholder content');
    expect(container.querySelector('span.placeholder')).toBe(null);
  });
});
