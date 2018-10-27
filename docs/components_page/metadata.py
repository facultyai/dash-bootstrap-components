
import json
import collections

import dash_bootstrap_components as dbc


def load_metadata():
    return _get_metadata(dbc.METADATA_PATH)


def _get_metadata(metadata_path):
    # Copied from Dash source:
    # https://github.com/plotly/dash/blob/master/dash/development/component_loader.py#L8
    with open(metadata_path) as data_file:
        json_string = data_file.read()
        data = json\
            .JSONDecoder(object_pairs_hook=collections.OrderedDict)\
            .decode(json_string)
    return data
