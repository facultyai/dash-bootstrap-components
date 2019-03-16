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
    const mockEvent = {
      target: {
        value: 'some-value'
      }
    }

    it('update the input if setProps is undefined', () => {
      const input = shallow(<Input />)
      const htmlInputBeforeChange = input.find('input')
      htmlInputBeforeChange.simulate('change', mockEvent)
      const htmlInputAfterChange = input.find('input')
      expect(htmlInputAfterChange.prop('value')).toEqual('some-value')
    })

    it('call setProps if debounce is false', () => {
      const setProps = jest.fn()
      const input = shallow(<Input setProps={setProps} />)
      const htmlInput = input.find('input')
      htmlInput.simulate('change', mockEvent)
      expect(setProps.mock.calls).toEqual([[{value: 'some-value'}]])
    })

    it('update the input and not setProps if debounce is true', () => {
      const setProps = jest.fn()
      const input = shallow(<Input debounce={true} setProps={setProps} />)
      const htmlInputBeforeChange = input.find('input')
      htmlInputBeforeChange.simulate('change', mockEvent)
      const htmlInputAfterChange = input.find('input')
      expect(htmlInputAfterChange.prop('value')).toEqual('some-value')
      expect(setProps.mock.calls).toHaveLength(0)
    })
  })

  describe('onBlur for input', () => {
    it('dispatch setProps', () => {
      const setProps = jest.fn()
      const input = shallow(
        <Input
          n_blur={0}
          n_blur_timestamp={-1}
          setProps={setProps}
        />
      )
      const htmlInput = input.find('input')
      htmlInput.simulate('blur')
      expect(setProps.mock.calls).toHaveLength(1)
      const [call] = setProps.mock.calls
      const [arg] = call
      const { n_blur, n_blur_timestamp } = arg
      expect(n_blur).toEqual(1)
      expect(n_blur_timestamp).toBeValidDate()
    })

    it('dispatch the value if debounce is true', () => {
      const setProps = jest.fn()
      const input = shallow(
        <Input
          n_blur={0}
          n_blur_timestamp={-1}
          setProps={setProps}
          debounce={true}
          value="some-value"
        />
      )
      const htmlInput = input.find('input')
      htmlInput.simulate('blur')
      expect(setProps.mock.calls).toHaveLength(1)
      const [call] = setProps.mock.calls
      const [arg] = call
      const { n_blur, n_blur_timestamp, value } = arg
      expect(n_blur).toEqual(1)
      expect(n_blur_timestamp).toBeValidDate()
      expect(value).toEqual('some-value')
    })
  })

  describe('onKeyPress for input', () => {
    const event = { key: 'Enter' }

    it('dispatch setProps', () => {
      const setProps = jest.fn()
      const input = shallow(
        <Input
          n_submit={0}
          n_submit_timestamp={-1}
          setProps={setProps}
        />
      )
      input.simulate('keyPress', event)
      expect(setProps.mock.calls).toHaveLength(1)
      const [[{n_submit, n_submit_timestamp}]] = setProps.mock.calls
      expect(n_submit).toEqual(1)
      expect(n_submit_timestamp).toBeValidDate()
    })

    it('dispatch the value if debounce is true', () => {
      const setProps = jest.fn()
      const input = shallow(
        <Input
          n_submit={0}
          n_submit_timestamp={-1}
          setProps={setProps}
          debounce={true}
          value="some-value"
        />
      )
      input.simulate('keyPress', event)
      expect(setProps.mock.calls).toHaveLength(1)
      const [[{n_submit, n_submit_timestamp, value}]] = setProps.mock.calls
      expect(n_submit).toEqual(1)
      expect(n_submit_timestamp).toBeValidDate()
      expect(value).toEqual("some-value")
    })

    it('do nothing if the key is not enter', () => {
      const setProps = jest.fn()
      const input = shallow(<Input setProps={setProps} />)
      input.simulate('keyPress', {key: 'a'})
      expect(setProps.mock.calls).toHaveLength(0)
    })
  })
})
