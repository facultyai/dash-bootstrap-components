# Contributing to Dash Bootstrap Components

Looking to contribute something to Dash Bootstrap Components? **Here's how you can help.**

Please take a moment to review this document in order to make the contribution
process easy and effective for everyone involved.

The developers of Dash Bootstrap Components work on this project in their spare
time. Following these guidelines will help minimise the effort required to
address your issue or assess your patches and features. Your help in making our
lives easier is very much appreciated!

## Using the issue tracker

The [issue tracker](https://github.com/facultyai/dash-bootstrap-components/issues) is
the preferred channel for [bug reports](#bug-reports), [feature requests](#feature-requests)
and [submitting pull requests](#pull-requests), but please respect the following
restrictions:

* Please **do not** use the issue tracker for personal support requests.  Stack
  Overflow ([`plotly-dash`](https://stackoverflow.com/questions/tagged/plotly-dash) tag),
  or the [Plotly Community Forum](https://community.plot.ly) are better places to get help.

* Please **do not** derail or troll issues. Keep the discussion on topic and
  respect the opinions of others.

## Bug reports

A bug is a _demonstrable problem_ that is caused by the code in the repository.
Good bug reports are extremely helpful, so thanks!

Guidelines for bug reports:

1. **Use the GitHub issue search** &mdash; check if the issue has already been
   reported.

2. **Check if the issue has been fixed** &mdash; try to reproduce it using the
   latest `main` or development branch in the repository.

3. **Isolate the problem** &mdash; ideally create a minimal working example that
   demonstrates the issue.

A good bug report shouldn't leave others needing to chase you up for more
information. Please try to be as detailed as possible in your report. What is
your environment? Which versions of `dash` and `dash-bootstrap-components` do
you have installed? What steps will reproduce the issue? What browser(s) and OS
experience the problem? Do other browsers show the bug differently? What
would you expect to be the outcome? All these details will help us to fix any
potential bugs. We have a bug report template you can use to ensure you don't
miss out any of these details when filing a [new bug report][new-bug-report].

## Feature requests

Feature requests are welcome. But take a moment to find out whether your idea
fits with the scope and aims of the project. It's up to *you* to make a strong
case to convince the project's developers of the merits of this feature. Please
provide as much detail and context as possible. We have a feature request
template you can use when filing a [new feature request][new-feature-request].

## Pull requests

Good pull requests - patches, improvements, new features - are a fantastic
help. They should remain focused in scope and avoid containing unrelated
commits.

**Please ask first** before embarking on any significant pull request (e.g.
implementing features, refactoring code, porting to a different language),
otherwise you risk spending a lot of time working on something that the
project's developers might not want to merge into the project.

Please adhere to the [coding guidelines](#code-guidelines) used throughout the
project (indentation, accurate comments, etc.) and any other requirements
(such as test coverage).

Adhering to the following process is the best way to get your work
included in the project:

1. [Fork](https://help.github.com/articles/fork-a-repo/) the project, clone your fork,
   and configure the remotes:

   ```bash
   # Clone your fork of the repo into the current directory
   git clone https://github.com/<your-username>/dash-bootstrap-components.git
   # Navigate to the newly cloned directory
   cd dash-bootstrap-components
   # Assign the original repo to a remote called "upstream"
   git remote add upstream https://github.com/facultyai/dash-bootstrap-components.git
   ```

2. If you cloned a while ago, get the latest changes from upstream:

   ```bash
   git checkout main
   git pull upstream main
   ```

3. Create a new topic branch (off the main project development branch) to
   contain your feature, change, or fix:

   ```bash
   git checkout -b <topic-branch-name>
   ```

4. Commit your changes in logical chunks. Please adhere to these [git commit
   message guidelines](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html)
   or your code is unlikely be merged into the main project. Use Git's
   [interactive rebase](https://help.github.com/articles/about-git-rebase/)
   feature to tidy up your commits before making them public.

5. Locally merge (or rebase) the upstream development branch into your topic branch:

   ```bash
   git pull [--rebase] upstream main
   ```

6. Push your topic branch up to your fork:

   ```bash
   git push origin <topic-branch-name>
   ```

7. [Open a Pull Request](https://help.github.com/articles/about-pull-requests/)
    with a clear title and description against the `main` branch.

**IMPORTANT**: By submitting a patch, you agree to allow the project owners to
license your work under the terms of the [Apache 2.0 License](../LICENSE).

## Code guidelines

### Python

Please use [black](https://github.com/python/black) with `--line-length 79` to
format any Python code. To do so, simply run the following from the root of
the repository

```sh
pip install black
black --line-length 79 .
```

### JS

Prettier to format JavaScript code as configured in `.prettierrc`. You can lint
your code with

```bash
npm run lint
```

and format it automatically with

```bash
npm run format
```

### Run tests

Run `npm run test` before committing to ensure your changes follow our coding
standards and pass our tests.

## Building dash-bootstrap-components locally

To build _dash-bootstrap-components_ locally, first install the Python
development dependencies

```
python -m pip install -r requirements-dev.txt
```

Then install JavaScript dependencies

```
npm install
```

You can now build Python, R and Julia packages with

```
npm run build
```

Install the Python package for testing using `flit` (which will have been
installed alongside the other development dependencies)

```
flit install [-s]
```

The optional `-s` flag creates a symlink to the code and allows you to make
changes to the source without having to reinstall. It is roughly equivalent to
doing `pip install -e .`.
## License

By contributing your code, you agree to license your contribution under the
[Apache 2.0 license](../LICENSE).

[new-bug-report]: https://github.com/facultyai/dash-bootstrap-components/issues/new?template=bug.md
[new-feature-request]: https://github.com/facultyai/dash-bootstrap-components/issues/new?template=feature.md
