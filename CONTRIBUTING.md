# Contributing to color-roulette.nvim

Thanks for considering to contribute.

### Getting Started

Not sure where to help? Try these:

- Look at the currently open [issues](https://github.com/October-Studios/color-roulette.nvim/issues)
  to see if some bug needs fixing or for cool feature ideas.<br>
  You should also look at currently open PRs ([Pull requests](https://github.com/October-Studios/
color-roulette.nvim/pulls)) to see if some abandoned PR interests you.<br>
- Feel free to open issues or unfinished PRs for help.
- Add tests and docs for your changes.

Good luck!

### Developer Tools

* Let's introduce you to the tools we use.*

- Your PR needs to pass tests & linter. We lint our codebase with [luacheck](https://github.com
/mpeterv/luacheck)
  and run tests with [plenary-test](https://github.com/nvim-lua/plenary.nvim).
  These tests will run on CI. If you want, you can run tests & linter locally with
  `make test` & `make lint` respectively. To run both, use `make check`.
- Lua codebase gets formatted with [stylua](https://github.com/JohnnyMorganz/StyLua) in CI.
  Formatting can be largely ignored in this case, but if you want to submit formatted
  PRs, you can run the formatter locally with `make format`.
- VimDocs are auto-generated with [panvimdoc](https://github.com/kdheepak/panvimdoc) from README.md.
  Do not make changes to doc/color-roulette.txt. Instead, add docs to README or Wiki.
  The docgen is run in CI as well. If you want to run it locally, you can do so with
  `make docgen`. Note: you'll need to have [pandoc](https://github.com/jgm/pandoc) installed.
- `make precommit_check` can come in handy, as it will run all aforementioned tools.
- You can check our test coverage with `make testcov`.
  You'll need to have [luacov](https://github.com/keplerproject/luacov)
  & [luacov-console](https://github.com/spacewander/luacov-console) installed for that.
  If you want luacov's detailed report files, run the command with the `NOCLEAN` env set.
  For example: `NOCLEAN=1 make testcov`
