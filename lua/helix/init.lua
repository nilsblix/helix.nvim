local util = require("helix.util")

local M = {}

-- Expose a simple module so `require("helix")` works.
-- Keep functions thin wrappers around util for now.
M.setup = util.apply
M.reload = util.reload

return M

