vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

local null_ls = require("null-ls")
local helpers = require("null-ls.helpers")

local ats_lint = {
  name = "ats_check",
  meta = {
    description = "ATS type checking"
  },
  method = null_ls.methods.DIAGNOSTICS_ON_SAVE,
  filetypes = { "ats" },

  generator = helpers.generator_factory({
    command = "patscc",
    args = { "-tcats", vim.fn.expand("%") },
    from_stderr = true,
    format = "line",

    check_exit_code = function(code)
      return code <= 1
    end,

    -- use helpers to parse the output from string matchers,
    -- or parse it manually with a function
    on_output = helpers.diagnostics.from_pattern(
      [[line=(%d+), offs=(%d+)%).--.%d+%(line=%d+, offs=(%d+)%):.(%w+)%(%w+%): (.*)$]],
      { "row", "col", "end_col", "severity", "message" }
    )
 }),
}

null_ls.register(ats_lint)
null_ls.setup()
