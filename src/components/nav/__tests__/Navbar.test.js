
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

describe('Pass on attributes to the underlying reactstrap navbar', () => {

  it('expand', () => {
    const navbar = shallow(
      <Navbar expand="xl">
        <NavItem>item</NavItem>
      </Navbar>
    )
    const rsNavbar = navbar.find(RSNavbar)
    expect(rsNavbar.prop('expand')).toEqual('xl')
  })

  it('dark', () => {
    const navbar = shallow(
      <Navbar dark={true}>
        <NavItem>item</NavItem>
      </Navbar>
    )
    const rsNavbar = navbar.find(RSNavbar)
    expect(rsNavbar.prop('dark')).toBe(true)
  })

  it('light', () => {
    const navbar = shallow(
      <Navbar light={true}>
        <NavItem>item</NavItem>
      </Navbar>
    )
    const rsNavbar = navbar.find(RSNavbar)
    expect(rsNavbar.prop('light')).toBe(true)
  })

  it('fixed', () => {
    const navbar = shallow(
      <Navbar fixed="top">
        <NavItem>item</NavItem>
      </Navbar>
    )
    const rsNavbar = navbar.find(RSNavbar)
    expect(rsNavbar.prop('fixed')).toBe('top')
  })

  it('color', () => {
    const navbar = shallow(
      <Navbar color="secondary">
        <NavItem>item</NavItem>
      </Navbar>
    )
    const rsNavbar = navbar.find(RSNavbar)
    expect(rsNavbar.prop('color')).toBe('secondary')
  })
})
