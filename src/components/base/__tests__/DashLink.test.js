
import React from 'react';
import {shallow, mount} from 'enzyme';
import DashLink from '../DashLink';

describe('DashLink -- presentation', () => {

  const link = shallow(<DashLink href="https://example.com">inner text</DashLink>);
  const anchor = link.find('a');

  it('contains an anchor', () =>
    expect(anchor).toHaveLength(1)
  )

  it('anchor contains the right text', () =>
    expect(anchor.prop('children')).toEqual('inner text')
  )

  it('anchor contains the right href', () =>
    expect(anchor.prop('href')).toEqual('https://example.com')
  )
})

describe('DashLink -- behaviour', () => {

  describe('internal link', () => {
    let link;
    let originalHistoryLength;
    let clickEvent;

    beforeAll(() => {
      jsdom.reconfigure({ url: 'http://starting-url.com' })
      link = mount(<DashLink href="/example">inner text</DashLink>);
      const anchor = link.find('a');
      window.scrollTo = jest.fn()
      originalHistoryLength = window.history.length
      clickEvent = {preventDefault: jest.fn()} // spy on preventDefault
      anchor.simulate('click', clickEvent)
    })

    it('redirect an internal link', () =>
      expect(window.location.toString()).toEqual('http://starting-url.com/example')
    )

    it('scroll the window', () =>
      expect(window.scrollTo).toBeCalledWith(0, 0)
    )

    it('populate the window history', () =>
      expect(window.history).toHaveLength(originalHistoryLength + 1)
    )

    it('prevent the default event handler', () =>
      expect(clickEvent.preventDefault).toHaveBeenCalled()
    )

    afterAll(() => {
      link.unmount()
    })
  })

  describe('external link', () => {
    // Enzyme does translate React synthetic events into real browser events.
    // We therefore can't easily test that the redirection happen.
    // Here, we just test that the default behaviour isn't prevented
    // when clicking on an anchor.
    let link;
    let clickEvent;

    beforeAll(() => {
      jsdom.reconfigure({ url: 'http://starting-url.com' })
      link = mount(<DashLink href="https://another-domain.com">inner text</DashLink>);
      const anchor = link.find('a');
      clickEvent = {preventDefault: jest.fn()} // spy on preventDefault
      anchor.simulate('click', clickEvent)
    })

    it('not prevent default event behaviour', () => {
      expect(clickEvent.preventDefault).not.toHaveBeenCalled()
    })

    afterAll(() => {
      link.unmount()
    })
  })

  describe('relative link with external_link true', () => {
    let link;
    let clickEvent;

    beforeAll(() => {
      jsdom.reconfigure({ url: 'http://starting-url.com' })
      link = mount(<DashLink href="/example" external_link={true}>inner text</DashLink>);
      const anchor = link.find('a')
      clickEvent = {preventDefault: jest.fn()} // spy on preventDefault
      anchor.simulate('click', clickEvent)
    })

    it('Not prevent default event behaviour', () => {
      expect(clickEvent.preventDefault).not.toHaveBeenCalled()
    })

    afterAll(() => {
      link.unmount()
    })
  })

  describe('external link with external_link false', () => {
    let link;
    let originalHistoryLength;
    let clickEvent;

    beforeAll(() => {
      jsdom.reconfigure({ url: 'http://starting-url.com' })
      link = mount(<DashLink href="http://starting-url.com/example" external_link={false}>inner text</DashLink>);
      const anchor = link.find('a');
      window.scrollTo = jest.fn()
      originalHistoryLength = window.history.length
      clickEvent = {preventDefault: jest.fn()} // spy on preventDefault
      anchor.simulate('click', clickEvent)
    })

    it('redirect an internal link', () =>
      expect(window.location.toString()).toEqual(`http://starting-url.com/example`)
    )

    it('scroll the window', () =>
      expect(window.scrollTo).toBeCalledWith(0, 0)
    )

    it('populate the window history', () =>
      expect(window.history).toHaveLength(originalHistoryLength + 1)
    )

    it('prevent the default event handler', () =>
      expect(clickEvent.preventDefault).toHaveBeenCalled()
    )

    afterAll(() => {
      link.unmount()
    })
  })

})

