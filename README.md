# rubocop-problem-matchers-action

GitHub Action to setup [Problem Matchers](https://github.com/actions/toolkit/blob/1cc56db0ff126f4d65aeb83798852e02a2c180c3/docs/problem-matchers.md) for [RuboCop](https://github.com/rubocop-hq/rubocop).

## Usage

Add this action as a step before running `rubocop` step:

```yaml
name: test

on:
  pull_request:
  push:
    branches:
      - main

jobs:
  test:
    runs-on: ubuntu-20.04
    steps:
      - uses: actions/checkout@v2
        with:
          ref: ${{ github.event.pull_request.head.sha }}
      - uses: ruby/setup-ruby@v1
        with:
          bundler-cache: true
          ruby-version: 2.7.2
      - uses: r7kamura/rubocop-problem-matchers-action@v1
      - run: bundle exec rubocop --parallel
```

### Note

- `rubocop --color` is not supported.
- Use `ref` on actions/checkout to annotate with actual line numbers.
- Now that RuboCop officially supports `--format github`, it's better to use this instead.

### Screenshot

![screenshot](/images/screenshot.png)
