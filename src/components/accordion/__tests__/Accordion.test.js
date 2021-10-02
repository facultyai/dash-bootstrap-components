/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
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

  test('tracks most recently clicked item with "active_item" prop', () => {
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

    userEvent.click(
      accordionItems.children[1].querySelector('h2.accordion-header > button')
    );
    expect(mockSetProps.mock.calls).toHaveLength(1);

    rerender(
      <Accordion setProps={mockSetProps} {...mockSetProps.mock.calls[0][0]}>
        <AccordionItem title="item-title-1">item-content-1</AccordionItem>
        <AccordionItem title="item-title-2">item-content-2</AccordionItem>
      </Accordion>
    );
    jest.runAllTimers();

    expect(
      accordionItems.children[0].querySelector('div.accordion-collapse')
    ).not.toHaveClass('show');
    expect(
      accordionItems.children[1].querySelector('div.accordion-collapse')
    ).toHaveClass('show');
  });
});
