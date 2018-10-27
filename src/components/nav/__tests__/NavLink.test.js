import React from 'react';
import {shallow} from 'enzyme';
import NavLink from '../NavLink';

describe('NavLink', () => {
  let navLink;
  let link;

  beforeAll(() => {
    navLink = shallow(<NavLink href="http://example.com">Some text</NavLink>);
    link = navLink.find('Link');
  });

  it('contain a Link', () => expect(link).toHaveLength(1));

  it('the link should have the correct href', () =>
    expect(link.prop('href')).toEqual('http://example.com'));

  it('the link should have the correct inner text', () =>
    expect(link.prop('children')).toEqual('Some text'));

  it('contain the nav-link class', () =>
    expect(link.prop('className').split(' ')).toContain('nav-link'));
});

describe('NavLink -- options', () => {
  it('active', () => {
    const navLink = shallow(
      <NavLink href="http://example.com" active>
        Some text
      </NavLink>
    );
    const link = navLink.find('Link');
    expect(link.prop('className').split(' ')).toContain('nav-link');
    expect(link.prop('className').split(' ')).toContain('active');
  });

  it('disabled', () => {
    const navLink = shallow(
      <NavLink href="http://example.com" disabled>
        Some text
      </NavLink>
    );
    const link = navLink.find('Link');
    const classes = link.prop('className').split(' ');
    expect(classes).toContain('nav-link');
    expect(classes).toContain('disabled');
    expect(link.prop('disabled')).toBe(true);
  });

  it('additional classes', () => {
    const navLink = shallow(
      <NavLink href="http://example.com" className="some-class">
        Some text
      </NavLink>
    );
    const link = navLink.find('Link');
    const classes = link.prop('className').split(' ');
    expect(classes).toContain('nav-link');
    expect(classes).toContain('some-class');
  });
});
