# AUTO GENERATED FILE - DO NOT EDIT

from dash.development.base_component import Component, _explicitize_args


class SyntaxHighlighter(Component):
    """A SyntaxHighlighter component.


Keyword arguments:
- id (string; optional): The ID used to identify this component in Dash callbacks.
- language (string; optional)
- code (string; optional)"""
    @_explicitize_args
    def __init__(self, id=Component.UNDEFINED, language=Component.UNDEFINED, code=Component.UNDEFINED, **kwargs):
        self._prop_names = ['id', 'language', 'code']
        self._type = 'SyntaxHighlighter'
        self._namespace = 'dbc_docs_components'
        self._valid_wildcard_attributes =            []
        self.available_properties = ['id', 'language', 'code']
        self.available_wildcard_properties =            []

        _explicit_args = kwargs.pop('_explicit_args')
        _locals = locals()
        _locals.update(kwargs)  # For wildcard attrs
        args = {k: _locals[k] for k in _explicit_args if k != 'children'}

        for k in []:
            if k not in args:
                raise TypeError(
                    'Required argument `' + k + '` was not specified.')
        super(SyntaxHighlighter, self).__init__(**args)
