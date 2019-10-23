import React from 'react';
import {mount, shallow} from 'enzyme';

import Badge from '../Badge';

describe('Badge', () => {
  it('should track clicks', () => {
    const mockSetProps = jest.fn();
    const wrapper = shallow(<Badge setProps={mockSetProps}>Badge</Badge>);
    wrapper.simulate('click');
    expect(mockSetProps.mock.calls).toHaveLength(1);
    expect(mockSetProps.mock.calls[0][0].n_clicks).toBe(1);
    expect(typeof mockSetProps.mock.calls[0][0].n_clicks_timestamp).toBe(
      'number'
    );
  });

  it('should render as link when href is set', () => {
    const href = '#href';
    const wrapper = mount(<Badge href={href}>Badge</Badge>);
    const linkComponent = wrapper.find('a');
    expect(linkComponent.exists()).toBe(true);
    expect(linkComponent.prop('href')).toEqual(href);
  });
});
