import React from 'react';

import {shallow} from 'enzyme';

import Input from '../Input';

describe('Input', () => {
  it('create an input', () => {
    const input = shallow(<Input />)
    const htmlInput = input.find('input')
    expect(htmlInput).toHaveLength(1)
  })

  describe('value', () => {
    it('push no value by default', () => {
      const input = shallow(<Input />)
      const htmlInput = input.find('input')
      expect(htmlInput.prop('value')).toBeUndefined()
    })

    it('pass a value onto the html input', () => {
      const input = shallow(<Input value="some-value" />)
      const htmlInput = input.find('input')
      expect(htmlInput.prop('value')).toEqual('some-value')
    })
  })
})
