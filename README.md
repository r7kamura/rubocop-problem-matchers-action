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
      - master

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: ruby/setup-ruby@v1
        with:
          bundler-cache: true
          ruby-version: '2.7.2'
      - uses: r7kamura/rubocop-problem-matchers-action@v1
      - run: bundle install
      - run: bundle exec rubocop --parallel
```

Note: This action doesn't support RuboCop colored output (`rubocop --color`) at the moment.

### Screenshot

![screenshot](/images/screenshot.png)
