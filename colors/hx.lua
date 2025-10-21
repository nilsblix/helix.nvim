local M = {}

if vim.g.colors_name then
    vim.cmd("hi clear")
end

vim.o.termguicolors = true
vim.g.colors_name = "hx"

require("helix").setup = require("helix.util").apply
require("helix.util").apply()

return M
