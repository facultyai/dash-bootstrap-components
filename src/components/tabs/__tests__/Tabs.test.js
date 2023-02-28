/**
 * @jest-environment jsdom
 */

import React from 'react';
import {render} from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import Tab from '../Tab';
import Tabs from '../Tabs';

describe('Tabs', () => {
  test('renders a ul with classes and nav, nav-tabs', () => {
    const {container} = render(<Tabs />);
    expect(container.querySelector('ul.nav.nav-tabs')).not.toBe(null);
  });

  test('renders each tab in order', () => {
    const {container} = render(
      <Tabs>
        <Tab label="tab-label-1">tab-content-1</Tab>
        <Tab label="tab-label-2">tab-content-2</Tab>
      </Tabs>
    );

    const nav = container.querySelector('ul.nav.nav-tabs');

    expect(nav.children[0]).toHaveTextContent('tab-label-1');
    expect(nav.children[1]).toHaveTextContent('tab-label-2');

    const content = container.querySelector('.tab-content');

    expect(content.children[0]).toHaveTextContent('tab-content-1');
    expect(content.children[1]).toHaveTextContent('tab-content-2');
  });

  test('sets currently active tab with "active_tab" prop', () => {
    const {container} = render(
      <Tabs active_tab="tab-2">
        <Tab tab_id="tab-1" label="tab-label-1">
          tab-content-1
        </Tab>
        <Tab tab_id="tab-2" label="tab-label-2">
          tab-content-2
        </Tab>
      </Tabs>
    );

    const nav = container.querySelector('ul.nav.nav-tabs');

    expect(nav.children[0].firstChild).not.toHaveClass('active');
    expect(nav.children[1].firstChild).toHaveClass('active');
  });

  // TODO: add test with CardHeader component

  test('tracks most recently clicked tab with "active_tab" prop', () => {
    const mockSetProps = jest.fn();
    const {container, getByText, rerender} = render(
      <Tabs setProps={mockSetProps} active_tab="tab-0">
        <Tab label="tab-label-1">tab-content-1</Tab>
        <Tab label="tab-label-2">tab-content-2</Tab>
      </Tabs>
    );

    const nav = container.querySelector('ul.nav.nav-tabs');

    expect(nav.children[0].firstChild).toHaveClass('active');
    expect(nav.children[1].firstChild).not.toHaveClass('active');

    userEvent.click(getByText('tab-label-2'));
    expect(mockSetProps.mock.calls).toHaveLength(1);

    rerender(
      <Tabs setProps={mockSetProps} {...mockSetProps.mock.calls[0][0]}>
        <Tab label="tab-label-1">tab-content-1</Tab>
        <Tab label="tab-label-2">tab-content-2</Tab>
      </Tabs>
    );

    expect(nav.children[0].firstChild).not.toHaveClass('active');
    expect(nav.children[1].firstChild).toHaveClass('active');
  });

  test('checks if inline styles from "tab_style", "active_tab_style", "label_style" and "active_label_style" are consistent', () => {
    const tabStyle = {backgroundColor: '#fff', borderRadius: '20px'};
    const activeTabStyle = {backgroundColor: '#000'};
    const labelStyle = {color: '#000', textDecoration: 'underline'};
    const activeLabelStyle = {color: '#fff'};

    const {container} = render(
      <Tabs active_tab="tab-2">
        <Tab
          tab_id="tab-1"
          label="tab-label-1"
          tab_style={tabStyle}
          active_tab_style={activeTabStyle}
          label_style={labelStyle}
          active_label_style={activeLabelStyle}
        >
          tab-content-1
        </Tab>
        <Tab
          tab_id="tab-2"
          label="tab-label-2"
          tab_style={tabStyle}
          active_tab_style={activeTabStyle}
          label_style={labelStyle}
          active_label_style={activeLabelStyle}
        >
          tab-content-2
        </Tab>
      </Tabs>
    );
    const nav = container.querySelector('ul.nav.nav-tabs');

    expect(nav.children[0]).toHaveStyle(tabStyle);
    expect(nav.children[0].firstChild).toHaveStyle(labelStyle);
    expect(nav.children[1]).toHaveStyle({
      backgroundColor: '#000',
      borderRadius: '20px'
    });
    expect(nav.children[1].firstChild).toHaveStyle({
      color: '#fff',
      textDecoration: 'underline'
    });
  });
});
