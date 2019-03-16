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

    it('pass on changes in the value prop', () => {
      const input = shallow(<Input />)
      input.setProps({value: 'some-value'})
      const htmlInput = input.find('input')
      expect(htmlInput.prop('value')).toEqual('some-value')
    })
  })

  describe('onChange for input', () => {
    it('update the input if setProps is undefined', () => {
      const input = shallow(<Input />)
      const htmlInputBeforeChange = input.find('input')
      htmlInputBeforeChange.simulate('change', {target: {value: 'some-value'}})
      const htmlInputAfterChange = input.find('input')
      expect(htmlInputAfterChange.prop('value')).toEqual('some-value')
    })

    it('call setProps if debounce is false', () => {
      const setProps = jest.fn()
      const input = shallow(<Input setProps={setProps} />)
      const htmlInput = input.find('input')
      htmlInput.simulate('change', {target: {value: 'some-value'}})
      expect(setProps.mock.calls).toEqual([[{value: 'some-value'}]])
    })
  })
})
