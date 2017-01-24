# run-each-cypress-spec

> Small script to run each Cypress spec file one by one

[![NPM][run-each-cypress-spec-icon] ][run-each-cypress-spec-url]

[![Build status][run-each-cypress-spec-ci-image] ][run-each-cypress-spec-ci-url]
[![semantic-release][semantic-image] ][semantic-url]

## Problem

If you separate [Cypress](https://www.cypress.io/)
E2E tests into multiple spec files, you soon end up with lots of files.
This script allows you to run all of them one after another from the
command line.

This little shell script finds all `cypress/integration/*-spec.js` files
and runs them one by one using `cypress run` command.

```sh
npm install -g run-each-cypress-spec
run-specs
```

If you need environment variables (like urls, passwords), you can easily
inject them using [as-a](https://github.com/bahmutov/as-a)

```sh
as-a cy run-specs
```

If a single test fails, the loop will exit with error right away.

## Videos and screenshots

To prevent Cypress from deleting videos from the first spec when starting
the second spec, the videos and screenshots will be placed into
subfolders. For example videos for spec `foo-spec.js` will be saved into
the folder `cypress/videos/foo`.

## Related

* [Cypress tips and tricks](https://glebbahmutov.com/blog/cypress-tips-and-tricks/)
* [cypress-failed-log](https://github.com/bahmutov/cypress-failed-log) - Gets you
  the Cypress test command log as JSON on failure

### Small print

Author: Gleb Bahmutov &lt;gleb.bahmutov@gmail.com&gt; &copy; 2017

* [@bahmutov](https://twitter.com/bahmutov)
* [glebbahmutov.com](http://glebbahmutov.com)
* [blog](http://glebbahmutov.com/blog)

License: MIT - do anything with the code, but don't blame me if it does not work.

Support: if you find any problems with this module, email / tweet /
[open issue](https://github.com/bahmutov/send-test-info/issues) on Github

## MIT License

Copyright (c) 2017 Gleb Bahmutov &lt;gleb.bahmutov@gmail.com&gt;

Permission is hereby granted, free of charge, to any person
obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without
restriction, including without limitation the rights to use,
copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following
conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

[run-each-cypress-spec-icon]: https://nodei.co/npm/run-each-cypress-spec.svg?downloads=true
[run-each-cypress-spec-url]: https://npmjs.org/package/run-each-cypress-spec
[run-each-cypress-spec-ci-image]: https://travis-ci.org/bahmutov/run-each-cypress-spec.svg?branch=master
[run-each-cypress-spec-ci-url]: https://travis-ci.org/bahmutov/run-each-cypress-spec
[semantic-image]: https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg
[semantic-url]: https://github.com/semantic-release/semantic-release
