/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Link from '../Link';

describe('Link', () => {
  test('renders a link with correct href', () => {
    const {
      container: {firstChild: internalLink}
    } = render(<Link href="/internal" />);
    const {
      container: {firstChild: externalLink}
    } = render(<Link href="https://external.com" />);

    expect(internalLink.getAttribute('href')).toEqual('/internal');
    expect(externalLink.getAttribute('href')).toEqual('https://external.com');
  });

  test('internal click behaviour', () => {
    // check that default behaviour wasn't prevented by wrapping in a div
    // where we have access to the onClick method
    // https://github.com/testing-library/react-testing-library/issues/572#issuecomment-574804033
    const mockPreOnClick = jest.fn();
    const outerOnClick = jest.fn();
    const link = render(
      <div onClick={e => outerOnClick(e.defaultPrevented)}>
        <Link preOnClick={mockPreOnClick} href="/internal">
          Clickable
        </Link>
      </div>
    );

    const mockDispatchEvent = jest.fn();
    const mockScrollTo = jest.fn();
    window.dispatchEvent = mockDispatchEvent;
    window.scrollTo = mockScrollTo;

    const pushStateSpy = jest.spyOn(window.history, 'pushState');

    userEvent.click(link.getByText('Clickable'));

    // default behaviour prevented
    expect(outerOnClick.mock.calls).toHaveLength(1);
    expect(outerOnClick.mock.calls[0][0]).toBe(true);

    // dash pushstate event dispatched
    expect(mockDispatchEvent.mock.calls).toHaveLength(1);
    expect(mockDispatchEvent.mock.calls[0][0].type).toEqual(
      '_dashprivate_pushstate'
    );

    // scroll to top
    expect(mockScrollTo.mock.calls).toHaveLength(1);
    expect(mockScrollTo.mock.calls[0]).toEqual([0, 0]);

    // preOnClick function called
    expect(mockPreOnClick.mock.calls).toHaveLength(1);

    // window history updated
    expect(pushStateSpy.mock.calls).toHaveLength(1);
    expect(pushStateSpy.mock.calls[0]).toEqual([{}, '', '/internal']);
  });

  test('external click behaviour', () => {
    const outerOnClick = jest.fn();
    const link = render(
      <div onClick={e => outerOnClick(e.defaultPrevented)}>
        <Link href="https://external.com">Clickable</Link>
      </div>
    );

    userEvent.click(link.getByText('Clickable'));

    // default link behaviour not prevented
    expect(outerOnClick.mock.calls).toHaveLength(1);
    expect(outerOnClick.mock.calls[0][0]).toBe(false);
  });

  test('"external_link" prop creates external link', () => {
    const outerOnClick = jest.fn();
    const link = render(
      <div onClick={e => outerOnClick(e.defaultPrevented)}>
        <Link href="/external" external_link>
          Clickable
        </Link>
      </div>
    );

    userEvent.click(link.getByText('Clickable'));

    // default link behaviour not prevented
    expect(outerOnClick.mock.calls).toHaveLength(1);
    expect(outerOnClick.mock.calls[0][0]).toBe(false);
  });

  describe('does nothing if disabled', () => {
    let outerOnClick;

    beforeEach(() => {
      outerOnClick = jest.fn();
    });

    test('internal', () => {
      const link = render(
        <div onClick={e => outerOnClick(e.defaultPrevented)}>
          <Link href="/internal" disabled>
            Clickable
          </Link>
        </div>
      );

      const mockDispatchEvent = jest.fn();
      const mockScrollTo = jest.fn();
      window.dispatchEvent = mockDispatchEvent;
      window.scrollTo = mockScrollTo;

      userEvent.click(link.getByText('Clickable'));

      expect(outerOnClick.mock.calls).toHaveLength(1);
      expect(outerOnClick.mock.calls[0][0]).toBe(true);

      expect(mockDispatchEvent.mock.calls).toHaveLength(0);
      expect(mockScrollTo.mock.calls).toHaveLength(0);
    });

    test('external', () => {
      const link = render(
        <div onClick={e => outerOnClick(e.defaultPrevented)}>
          <Link href="https://external.com" disabled>
            Clickable
          </Link>
        </div>
      );

      userEvent.click(link.getByText('Clickable'));

      expect(outerOnClick.mock.calls).toHaveLength(1);
      expect(outerOnClick.mock.calls[0][0]).toBe(true);
    });
  });
});
