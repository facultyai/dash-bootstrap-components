import React from 'react';
import {shallow} from 'enzyme';
import NavLink from '../NavLink';

describe('NavLink', () => {
  let link;
  let dashLink;

  beforeAll(() => {
    link = shallow(<NavLink href="http://example.com">Some text</NavLink>)
    dashLink = link.find('DashLink')
  })

  it('contain a DashLink', () =>
    expect(dashLink).toHaveLength(1)
  )
  
})
