import React from 'react';

import {shallow} from 'enzyme';

import Input from '../Input';

describe('Input', () => {
  it('create an input', () => {
    const input = shallow(<Input />)
    const htmlInput = input.find('input')
    expect(htmlInput).toHaveLength(1)
  })
})
