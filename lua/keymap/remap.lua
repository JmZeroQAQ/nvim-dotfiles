-- Set leader key
local g = vim.g
g.mapleader = vim.keycode('<space>')

local  util= require("utils.util")

util.map({ "n" }, "k", "gk", { silent = true })
util.map({ "n" }, "j", "gj", { silent = true })

-- clear highlights
util.map({ "n" }, "<Esc>", function() vim.cmd([[nohl]]) end, { silent = true, desc = "clear highlights" })
