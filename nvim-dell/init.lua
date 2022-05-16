pcall(require, "impatient")

if require "hencor.first_load"() then
  return
end

vim.g.mapleader = ","

vim.g.snippets = "luasnip"

require "hencor.globals"

require "hencor.disable_builtin"

require "hencor.plugins"

require "hencor.telescope.setup"
require "hencor.telescope.mappings"
-- require "hencor.dap"

require "hencor.refactor"
require "hencor.lsp"
