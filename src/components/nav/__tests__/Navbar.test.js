import React from 'react';
import {shallow} from 'enzyme';
import {Navbar as RSNavbar} from 'reactstrap';
import NavbarSimple from '../NavbarSimple';
import NavbarBrand from '../NavbarBrand';
import NavItem from '../NavItem';

describe('Empty Navbar', () => {
  let navbar;
  let rsNavbar;
  let navbarBrand;

  beforeAll(() => {
    navbar = shallow(
      <NavbarSimple>
        <NavItem>item</NavItem>
      </NavbarSimple>
    );
    rsNavbar = navbar.find(RSNavbar);
    navbarBrand = navbar.find(NavbarBrand);
  });

  it('should contain a reactstrap Navbar', () =>
    expect(rsNavbar).toHaveLength(1));

  it('should not have a brand', () => expect(navbarBrand).toHaveLength(0));
});

describe('Navbar with brand', () => {
  let navbar;
  let navbarBrand;

  beforeAll(() => {
    navbar = shallow(
      <NavbarSimple
        brand="some-brand"
        brand_href="https://example.com"
        brand_style={{'background-color': 'red'}}
        brand_external_link={true}
      >
        <NavItem>item</NavItem>
      </NavbarSimple>
    );
    navbarBrand = navbar.find(NavbarBrand);
  });

  it('contain a NavbarBrand', () => expect(navbarBrand).toHaveLength(1));

  it('pass props onto the NavbarBrand', () => {
    expect(navbarBrand.prop('href')).toEqual('https://example.com');
    expect(navbarBrand.prop('style')).toEqual({'background-color': 'red'});
    expect(navbarBrand.prop('external_link')).toBe(true);
  });
});

describe('Pass on attributes to the underlying reactstrap navbar', () => {
  function navbarWithProps(props) {
    const navbar = shallow(
      <NavbarSimple {...props}>
        <NavItem>item</NavItem>
      </NavbarSimple>
    );
    const rsNavbar = navbar.find(RSNavbar);
    return {navbar, rsNavbar};
  }

  it('expand', () => {
    const {navbar, rsNavbar} = navbarWithProps({expand: 'xl'});
    expect(rsNavbar.prop('expand')).toEqual('xl');
  });

  it('dark', () => {
    const {navbar, rsNavbar} = navbarWithProps({dark: true});
    expect(rsNavbar.prop('dark')).toBe(true);
  });

  it('light', () => {
    const {navbar, rsNavbar} = navbarWithProps({light: true});
    expect(rsNavbar.prop('light')).toBe(true);
  });

  it('fixed', () => {
    const {navbar, rsNavbar} = navbarWithProps({fixed: 'top'});
    expect(rsNavbar.prop('fixed')).toBe('top');
  });

  it('sticky', () => {
    const {navbar, rsNavbar} = navbarWithProps({sticky: 'top'});
    expect(rsNavbar.prop('sticky')).toBe('top');
  });

  it('color', () => {
    const {navbar, rsNavbar} = navbarWithProps({color: 'secondary'});
    expect(rsNavbar.prop('color')).toBe('secondary');
  });
});
