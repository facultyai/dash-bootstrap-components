import pluginJs from '@eslint/js';
import pluginJest from 'eslint-plugin-jest';
import pluginReact from 'eslint-plugin-react';
import unusedImports from 'eslint-plugin-unused-imports';
import globals from 'globals';

/** @type {import('eslint').Linter.Config[]} */
export default [
  {
    files: ['**/*.{js,mjs,cjs,jsx}'],
    settings: {react: {version: 'detect'}},
    plugins: {jest: pluginJest, 'unused-imports': unusedImports},
    languageOptions: {
      globals: pluginJest.environments.globals.globals
    },
    rules: {
      'no-unused-vars': 'off',
      'unused-imports/no-unused-imports': 'error',
      'unused-imports/no-unused-vars': [
        'warn',
        {
          vars: 'all',
          varsIgnorePattern: '^_',
          args: 'after-used',
          argsIgnorePattern: '^_'
        }
      ],
      'jest/no-disabled-tests': 'warn',
      'jest/no-focused-tests': 'error',
      'jest/no-identical-title': 'error',
      'jest/prefer-to-have-length': 'warn',
      'jest/valid-expect': 'error'
    }
  },
  {languageOptions: {globals: globals.browser}},

  pluginJs.configs.recommended,
  pluginReact.configs.flat.recommended
];
