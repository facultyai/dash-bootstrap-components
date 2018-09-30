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
  
})
