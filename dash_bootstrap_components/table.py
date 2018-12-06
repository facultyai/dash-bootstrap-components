import dash_html_components as html


def _generate_table_from_df(
    cls,
    df,
    float_format=None,
    columns=None,
    header=True,
    index=False,
    index_label=None,
    date_format=None,
    **table_kwargs
):
    """
    Generate a Table component from a dataframe.

    Parameters
    ----------
    df : pandas.DataFrame
        DataFrame to render as a table.
    float_format : str, optional
        Format to use for floating point numbers.
    columns : sequence, optional
        Columns to render.
    header : boolean or list(str) or dict(str: str), optional
        Write out the column names. If a list of strings is given it is assumed
        to be aliases for the columns names (and hence must be the same length
        as df.columns). A dict can be passed to rename some columns, the format
        is {'<current_name>': '<new_name>'}. The dictionary need not have an
        entry for every column.
    index : boolean, optional
        Render the row names (index).
    index_label : str, optional
        Column label for index column if desired. If None is passed, but both
        header and index are True, then the index name is used.
    date_format : str, optional
        Format string for datetime objects.
    **table_kwargs : Keyword arguments
        Additional arguments to pass to the table component. See
        dash_bootstrap_components.Table for details.
    """
    import numpy as np
    import pandas as pd

    if columns is not None:
        df = df.loc[:, columns]

    if float_format is not None:
        for c in df.select_dtypes(["float"]).columns:
            df[c] = df[c].map(lambda x: "{1:{0}}".format(float_format, x))

    if date_format is not None:
        for c in df.select_dtypes(["datetime"]).columns:
            df[c] = df[c].map(lambda x: x.strftime(date_format))

    if index:
        df = df.reset_index()
        if index_label is not None:
            df = df.rename(columns={"index": index_label})

    if header:
        if isinstance(header, (tuple, list, np.ndarray, pd.Index)):
            try:
                df.columns = header
            except ValueError:
                raise ValueError(
                    "If specifying column names with a sequence, the number "
                    "of names must exactly match the number of columns."
                )
        elif isinstance(header, dict):
            df = df.rename(columns=header)
        table = [
            html.Thead(html.Tr(children=[html.Th(col) for col in df.columns]))
        ]
    else:
        table = []
    table.append(
        html.Tbody(
            [
                html.Tr([html.Td(df.iloc[i][col]) for col in df.columns])
                for i in range(len(df))
            ]
        )
    )
    return cls(table, **table_kwargs)
