
import React from 'react';
import {shallow} from 'enzyme';
import {Navbar as RSNavbar} from 'reactstrap';
import Navbar from '../Navbar';
import NavbarBrand from '../NavbarBrand';
import NavItem from '../NavItem';

describe('Empty Navbar', () => {
  let navbar;
  let rsNavbar;
  let navbarBrand;

  beforeAll(() => {
    navbar = shallow(
      <Navbar>
        <NavItem>item</NavItem>
      </Navbar>
    );
    rsNavbar = navbar.find(RSNavbar)
    navbarBrand = navbar.find(NavbarBrand);
  })

  it('should contain a reactstrap Navbar', () =>
    expect(rsNavbar).toHaveLength(1)
  )

  it('should not have a brand', () =>
    expect(navbarBrand).toHaveLength(0)
  )
})

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

describe('Expandable navbar', () => {
  let navbar;
  let rsNavbar;

  beforeAll(() => {
    navbar = shallow(
      <Navbar expand="xl">
        <NavItem>item</NavItem>
      </Navbar>
    )
    rsNavbar = navbar.find(RSNavbar)
  })

  it('pass on expand prop to underlying Reactstrap navbar', () =>
    expect(rsNavbar.prop('expand')).toEqual('xl')
  )
})
