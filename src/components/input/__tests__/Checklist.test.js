/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Checklist from '../Checklist';

describe('Checklist', () => {
  let checklist;
  let mockSetProps;

  beforeEach(() => {
    mockSetProps = jest.fn();
    checklist = render(
      <Checklist
        id="test-id"
        options={[
          {label: 'Item 1', value: 1},
          {label: 'Item 2', value: 2},
          {label: 'Disabled item', value: 3, disabled: true}
        ]}
        setProps={mockSetProps}
      />
    );
  });

  test('renders a checklist with items ordered correctly', () => {
    const [child1, child2, child3] = checklist.container.firstChild.children;

    expect(child1).toHaveClass('form-check');
    const [input1, label1] = child1.children;
    expect(input1).toHaveClass('form-check-input');
    expect(label1).toHaveClass('form-check-label');
    expect(label1).toHaveTextContent('Item 1');
    expect(input1.disabled).toEqual(false);

    expect(child2).toHaveClass('form-check');
    const [input2, label2] = child2.children;
    expect(input2).toHaveClass('form-check-input');
    expect(label2).toHaveClass('form-check-label');
    expect(label2).toHaveTextContent('Item 2');
    expect(input2.disabled).toEqual(false);

    expect(child3).toHaveClass('form-check');
    const [input3, label3] = child3.children;
    expect(input3).toHaveClass('form-check-input');
    expect(label3).toHaveClass('form-check-label');
    expect(label3).toHaveTextContent('Disabled item');
    expect(input3.disabled).toEqual(true);
  });

  test('clicking a checkbox toggles its status unless disabled', () => {
    const [child1, child2, child3] = checklist.container.firstChild.children;
    const input1 = child1.firstChild;
    const input2 = child2.firstChild;
    const input3 = child3.firstChild;

    expect(input1.checked).toEqual(false);
    expect(input2.checked).toEqual(false);
    expect(input3.checked).toEqual(false);

    userEvent.click(input1);

    expect(mockSetProps.mock.calls).toHaveLength(1);
    const [{value: value1}] = mockSetProps.mock.calls[0];
    expect(value1).toEqual([1]);

    checklist.rerender(
      <Checklist
        id="test-id"
        options={[
          {label: 'Item 1', value: 1},
          {label: 'Item 2', value: 2},
          {label: 'Disabled item', value: 3, disabled: true}
        ]}
        setProps={mockSetProps}
        value={value1}
      />
    );

    expect(input1.checked).toEqual(true);
    expect(input2.checked).toEqual(false);
    expect(input3.checked).toEqual(false);

    userEvent.click(input2);

    expect(mockSetProps.mock.calls).toHaveLength(2);
    const [{value: value2}] = mockSetProps.mock.calls[1];
    expect(value2).toEqual([1, 2]);

    checklist.rerender(
      <Checklist
        id="test-id"
        options={[
          {label: 'Item 1', value: 1},
          {label: 'Item 2', value: 2},
          {label: 'Disabled item', value: 3, disabled: true}
        ]}
        setProps={mockSetProps}
        value={value2}
      />
    );

    expect(input1.checked).toEqual(true);
    expect(input2.checked).toEqual(true);
    expect(input3.checked).toEqual(false);

    userEvent.click(input3);

    expect(mockSetProps.mock.calls).toHaveLength(2);
    expect(input1.checked).toEqual(true);
    expect(input2.checked).toEqual(true);
    expect(input3.checked).toEqual(false);
  });

  test('clicking a label toggles its associated checkbox status', () => {
    const label1 = checklist.getByText('Item 1');
    const label2 = checklist.getByText('Item 2');
    const label3 = checklist.getByText('Disabled item');

    const [child1, child2, child3] = checklist.container.firstChild.children;
    const input1 = child1.firstChild;
    const input2 = child2.firstChild;
    const input3 = child3.firstChild;

    expect(input1.checked).toEqual(false);
    expect(input2.checked).toEqual(false);
    expect(input3.checked).toEqual(false);

    userEvent.click(label1);

    expect(mockSetProps.mock.calls).toHaveLength(1);
    const [{value: value1}] = mockSetProps.mock.calls[0];
    expect(value1).toEqual([1]);

    checklist.rerender(
      <Checklist
        id="test-id"
        options={[
          {label: 'Item 1', value: 1},
          {label: 'Item 2', value: 2},
          {label: 'Disabled item', value: 3, disabled: true}
        ]}
        setProps={mockSetProps}
        value={value1}
      />
    );

    expect(input1.checked).toEqual(true);
    expect(input2.checked).toEqual(false);
    expect(input3.checked).toEqual(false);

    userEvent.click(label2);

    expect(mockSetProps.mock.calls).toHaveLength(2);
    const [{value: value2}] = mockSetProps.mock.calls[1];
    expect(value2).toEqual([1, 2]);

    checklist.rerender(
      <Checklist
        id="test-id"
        options={[
          {label: 'Item 1', value: 1},
          {label: 'Item 2', value: 2},
          {label: 'Disabled item', value: 3, disabled: true}
        ]}
        setProps={mockSetProps}
        value={value2}
      />
    );

    expect(input1.checked).toEqual(true);
    expect(input2.checked).toEqual(true);
    expect(input3.checked).toEqual(false);

    userEvent.click(label3);

    expect(mockSetProps.mock.calls).toHaveLength(2);
    expect(input1.checked).toEqual(true);
    expect(input2.checked).toEqual(true);
    expect(input3.checked).toEqual(false);
  });

  test('renders an inline checklist with "inline" prop', () => {
    checklist.rerender(
      <Checklist
        id="test-id"
        options={[
          {label: 'Item 1', value: 1},
          {label: 'Item 2', value: 2},
          {label: 'Disabled item', value: 3, disabled: true}
        ]}
        setProps={mockSetProps}
        inline
      />
    );
    const [child1, child2, child3] = checklist.container.firstChild.children;

    expect(child1).toHaveClass('form-check form-check-inline');
    expect(child2).toHaveClass('form-check form-check-inline');
    expect(child3).toHaveClass('form-check form-check-inline');
  });

  test('renders switches with the "switch" prop', () => {
    checklist.rerender(
      <Checklist
        id="test-id"
        options={[
          {label: 'Item 1', value: 1},
          {label: 'Item 2', value: 2},
          {label: 'Disabled item', value: 3, disabled: true}
        ]}
        setProps={mockSetProps}
        switch
      />
    );
    const [child1, child2, child3] = checklist.container.firstChild.children;

    expect(child1).toHaveClass('form-switch form-check');
    expect(child2).toHaveClass('form-switch form-check');
    expect(child3).toHaveClass('form-switch form-check');
  });

  test('applies additional styles and class names to checked labels', () => {
    checklist.rerender(
      <Checklist
        id="test-id"
        options={[
          {label: 'Item 1', value: 1},
          {label: 'Item 2', value: 2},
          {label: 'Disabled item', value: 3, disabled: true}
        ]}
        setProps={mockSetProps}
        value={[2]}
        label_checked_class_name="a-checked-label"
        label_checked_style={{color: 'green'}}
      />
    );
    const [child1, child2, child3] = checklist.container.firstChild.children;

    const label1 = child1.children[1];
    expect(label1).not.toHaveClass('a-checked-label');
    expect(label1).not.toHaveStyle('color:green;');

    const label2 = child2.children[1];
    expect(label2).toHaveClass('a-checked-label');
    expect(label2).toHaveStyle('color:green;');

    const label3 = child3.children[1];
    expect(label3).not.toHaveClass('a-checked-label');
    expect(label3).not.toHaveStyle('color:green;');
  });

  test('different options types work as expected (list)', () => {
    // Check that when provided with a list of options, these are converted to
    // the expected format

    const options = [
      {label: 'Option1', value: 'Option1'},
      {label: 'Option2', value: 'Option2'},
      {label: 'Option3', value: 'Option3'}
    ];

    const expectedOptionsChecklist = render(<Checklist options={options} />);

    const listOptions = ['Option1', 'Option2', 'Option3'];
    const listOptionsChecklist = render(<Checklist options={listOptions} />);

    expect(listOptionsChecklist.container.innerHTML).toEqual(
      expectedOptionsChecklist.container.innerHTML
    );
  });

  test('different options types work as expected (shorthand)', () => {
    // Check that when provided with a {label: value} array of options, these
    // are converted to the expected format

    const expectedOptions = [
      {label: 'Option A', value: 'Option1'},
      {label: 'Option B', value: 'Option2'},
      {label: 'Option C', value: 'Option3'}
    ];
    const expectedOptionsChecklist = render(
      <Checklist options={expectedOptions} />
    );

    const shortHandOptions = {
      Option1: 'Option A',
      Option2: 'Option B',
      Option3: 'Option C'
    };
    const shortHandOptionsChecklist = render(
      <Checklist options={shortHandOptions} />
    );

    expect(shortHandOptionsChecklist.container.innerHTML).toEqual(
      expectedOptionsChecklist.container.innerHTML
    );
  });
});
