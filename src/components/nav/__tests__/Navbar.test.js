
import React from 'react';
import {shallow} from 'enzyme';
import Navbar from '../Navbar';
import NavbarBrand from '../NavbarBrand';
import NavItem from '../NavItem';

describe('Navbar with brand', () => {
  let navbar;
  let navbarBrand;

  beforeAll(() => {
    navbar = shallow(
      <Navbar
        brand="some-brand"
        brand_href="https://example.com"
        brand_style={{'background-color': 'red'}}
        brand_external_link={true}
      >
        <NavItem>item</NavItem>
      </Navbar>
    );
    navbarBrand = navbar.find(NavbarBrand);
  })

  it('contain a NavbarBrand', () =>
    expect(navbarBrand).toHaveLength(1)
  )

  it('pass props onto the NavbarBrand', () => {
    expect(navbarBrand.prop('href')).toEqual('https://example.com')
    expect(navbarBrand.prop('style')).toEqual({'background-color': 'red'})
    expect(navbarBrand.prop('external_link')).toBe(true)
  })
})
