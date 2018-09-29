
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
    const originalLocation = window.location.toString()
    const link = mount(<DashLink href="/example">inner text</DashLink>);
    window.scrollTo = jest.fn()
    link.simulate('click')

    it('redirect an internal link', () =>
      expect(window.location.toString()).toEqual(`${originalLocation}example`)
    )

    it('scroll the window', () =>
      expect(window.scrollTo).toBeCalledWith(0, 0)
    )
  })

})
