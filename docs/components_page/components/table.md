---
title: Table
lead: Add Bootstrap styles HTML tables to your app with the `Table` component.
---

## Examples

To add a Bootstrap styled table to your app, use `dbc.Table` as a drop-in replacement for `html.Table`, building up the content with `html.Thead`, `html.Tbody`, `html.Th`, `html.Tr` and `html.Td`.

{{example:components/table/simple.py:table}}

## Styling the table

The style of the table can be modified through a number of available keyword arguments, such as `dark`, `striped`, `bordered` and `hover`.

{{example:components/table/kwargs.py:table}}

### Table Colors

Alternatively colors can be added with the `color` property.

{{example:components/table/color.py:table}}

## Table from DataFrame

Manually constructing a HTML table can be tedious. The `Table` component has a `from_dataframe` method which allows you to easily construct a `Table` from a Pandas DataFrame. You will need to have Pandas installed. Either install it yourself or run `pip install -U dash-bootstrap-components[pandas]`.

{{example:components/table/helper.py:table}}

## Table from MultiIndex DataFrame

If you have a columnar MultiIndex in your Pandas DataFrame, the `from_dataframe` method will automatically merge the relevant header cells for you.

{{example:components/table/helper_multi.py:table}}

{{apidoc:src/components/Table.js}}
