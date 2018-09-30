import React from 'react';
import {shallow} from 'enzyme';
import NavLink from '../NavLink';

describe('NavLink', () => {
  let navLink;
  let link;

  beforeAll(() => {
    navLink = shallow(<NavLink href="http://example.com">Some text</NavLink>)
    link = navLink.find('Link')
  })

  it('contain a Link', () =>
    expect(link).toHaveLength(1)
  )

  it('the link should have the correct href', () =>
    expect(link.prop('href')).toEqual('http://example.com')
  )

  it('the link should have the correct inner text', () =>
    expect(link.prop('children')).toEqual('Some text')
  )
  
})
