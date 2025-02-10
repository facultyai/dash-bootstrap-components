/**
 * @jest-environment jsdom
 */
import React from 'react';

import {act, render, screen, waitFor} from '@testing-library/react';
import userEvent from '@testing-library/user-event';

import Accordion from '../Accordion';
import AccordionItem from '../AccordionItem';

jest.useFakeTimers();

describe('Accordion', () => {
  test('renders a div with accordion class', () => {
    const {container} = render(<Accordion />);
    expect(container.querySelector('div.accordion')).not.toBe(null);
  });

  test('renders each item correctly, in order', () => {
    const {container} = render(
      <Accordion>
        <AccordionItem title="item-label-1">item-content-1</AccordionItem>
        <AccordionItem title="item-label-2">item-content-2</AccordionItem>
      </Accordion>
    );

    const accordionItems = container.querySelector('div.accordion');

    // Item class
    expect(accordionItems.children[0]).toHaveClass('accordion-item');
    expect(accordionItems.children[1]).toHaveClass('accordion-item');

    // Headers
    expect(
      accordionItems.children[0].querySelector('h2.accordion-header')
    ).toHaveTextContent('item-label-1');
    expect(
      accordionItems.children[1].querySelector('h2.accordion-header')
    ).toHaveTextContent('item-label-2');

    // Content
    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).toHaveTextContent('item-content-1');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).toHaveTextContent('item-content-2');
  });

  test('sets currently active item with "active_item" prop', () => {
    const {container} = render(
      <Accordion active_item="item-2">
        <AccordionItem item_id="item-1" title="item-title-1">
          item-content-1
        </AccordionItem>
        <AccordionItem item_id="item-2" title="item-title-2">
          item-content-2
        </AccordionItem>
      </Accordion>
    );

    const accordionItems = container.querySelector('div.accordion');

    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
  });

  test('starts in a collapsed state with "start_collapsed" prop', () => {
    const {container} = render(
      <Accordion start_collapsed>
        <AccordionItem item_id="item-1" title="item-title-1">
          item-content-1
        </AccordionItem>
        <AccordionItem item_id="item-2" title="item-title-2">
          item-content-2
        </AccordionItem>
      </Accordion>
    );

    const accordionItems = container.querySelector('div.accordion');

    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
  });

  test('tracks most recently clicked item with "active_item" prop', async () => {
    const user = userEvent.setup({advanceTimers: jest.advanceTimersByTime});
    const mockSetProps = jest.fn();
    const {container, rerender} = render(
      <Accordion setProps={mockSetProps} active_item="item-0">
        <AccordionItem title="item-title-1">item-content-1</AccordionItem>
        <AccordionItem title="item-title-2">item-content-2</AccordionItem>
      </Accordion>
    );

    let accordionItems = container.querySelector('div.accordion');

    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');

    await user.click(await screen.findByText('item-title-2'));
    expect(mockSetProps.mock.calls).toHaveLength(1);

    rerender(
      <Accordion setProps={mockSetProps} {...mockSetProps.mock.calls[0][0]}>
        <AccordionItem title="item-title-1">item-content-1</AccordionItem>
        <AccordionItem title="item-title-2">item-content-2</AccordionItem>
      </Accordion>
    );
    act(() => jest.runAllTimers());

    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).toHaveClass('show');

    // clicking on an open item closes it
    await user.click(await screen.findByText('item-title-2'));
    expect(mockSetProps.mock.calls).toHaveLength(2);

    rerender(
      <Accordion setProps={mockSetProps} {...mockSetProps.mock.calls[1][0]}>
        <AccordionItem title="item-title-1">item-content-1</AccordionItem>
        <AccordionItem title="item-title-2">item-content-2</AccordionItem>
      </Accordion>
    );
    act(() => jest.runAllTimers());

    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
  });

  test('keeps item open with "always_open" prop', async () => {
    const user = userEvent.setup({advanceTimers: jest.advanceTimersByTime});
    const mockSetProps = jest.fn();

    const {container} = render(
      <Accordion setProps={mockSetProps} always_open start_collapsed>
        <AccordionItem title="item-title-1">item-content-1</AccordionItem>
        <AccordionItem title="item-title-2">item-content-2</AccordionItem>
      </Accordion>
    );

    const accordionItems = container.querySelector('div.accordion');

    // Check none of the items are open
    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');

    // Click on the second item
    await user.click(await screen.findByText('item-title-2'));
    expect(mockSetProps.mock.calls).toHaveLength(1);

    // wait for transition to complete
    await waitFor(() =>
      expect(
        accordionItems.children[1].querySelector('div.accordion-collapse')
      ).toHaveClass('show')
    );

    // Check just the second item is open
    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');

    // Click on the first item
    await user.click(await screen.findByText('item-title-1'));
    expect(mockSetProps.mock.calls).toHaveLength(2);

    // Check that the first child is now open, and the second remains open
    await waitFor(() =>
      expect(
        accordionItems.children[0].querySelector('div.accordion-collapse')
      ).toHaveClass('show')
    );
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
  });

  test('allow multiple items open with "always_open" prop', () => {
    const {container} = render(
      <Accordion always_open active_item={['item-0', 'item-1']}>
        <AccordionItem title="item-title-1">item-content-1</AccordionItem>
        <AccordionItem title="item-title-2">item-content-2</AccordionItem>
      </Accordion>
    );

    const accordionItems = container.querySelector('div.accordion');

    // Check both items open
    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
  });

  test('tracks most recently clicked item with "active_item" prop when always_open', async () => {
    const user = userEvent.setup({advanceTimers: jest.advanceTimersByTime});
    const mockSetProps = jest.fn();
    const {container, rerender} = render(
      <Accordion setProps={mockSetProps} active_item={['item-0']} always_open>
        <AccordionItem title="item-title-1">item-content-1</AccordionItem>
        <AccordionItem title="item-title-2">item-content-2</AccordionItem>
        <AccordionItem title="item-title-3">item-content-3</AccordionItem>
      </Accordion>
    );

    let accordionItems = container.querySelector('div.accordion');

    // Expect first item open
    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
    expect(
      accordionItems.children[2].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');

    // Click the middle option
    await user.click(await screen.getByText('item-title-2'));
    expect(mockSetProps.mock.calls).toHaveLength(1);

    rerender(
      <Accordion
        always_open
        setProps={mockSetProps}
        {...mockSetProps.mock.calls[0][0]}
      >
        <AccordionItem title="item-title-1">item-content-1</AccordionItem>
        <AccordionItem title="item-title-2">item-content-2</AccordionItem>
        <AccordionItem title="item-title-3">item-content-3</AccordionItem>
      </Accordion>
    );
    act(() => jest.runAllTimers());

    // Check first option stayed open, middle option now open but third still
    // closed
    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
    expect(
      accordionItems.children[2].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');

    // clicking on 1st item closes it, but keeps second item open and 3rd closed
    await user.click(await screen.getByText('item-title-1'));
    expect(mockSetProps.mock.calls).toHaveLength(2);

    rerender(
      <Accordion
        always_open
        setProps={mockSetProps}
        {...mockSetProps.mock.calls[1][0]}
      >
        <AccordionItem title="item-title-1">item-content-1</AccordionItem>
        <AccordionItem title="item-title-2">item-content-2</AccordionItem>
        <AccordionItem title="item-title-3">item-content-3</AccordionItem>
      </Accordion>
    );
    act(() => jest.runAllTimers());

    // Check that 1 and 3 now closed, and 2 is open
    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
    expect(
      accordionItems.children[2].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
  });
});
