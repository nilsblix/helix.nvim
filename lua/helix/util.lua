local M = {}

local function reset_modules()
  for k in pairs(package.loaded) do
    if k:match("^helix") then
      package.loaded[k] = nil
    end
  end
end

function M.apply()
  local p = require("helix.palette")
  require("helix.highlights").apply(p)
end

function M.reload()
  reset_modules()
  vim.cmd("colorscheme hx")
end

return M
