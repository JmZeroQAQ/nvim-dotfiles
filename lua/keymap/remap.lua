-- Set leader key
local g = vim.g
g.mapleader = vim.keycode('<space>')

local util = require("utils.util")

util.map({ "n" }, "k", "gk", { silent = true })
util.map({ "n" }, "j", "gj", { silent = true })

util.map({ "n" }, "<Esc>", function() vim.cmd([[nohl]]) end, { silent = true, desc = "clear highlights" })
util.map({ "n" }, "<C-s>", function() vim.cmd([[write]]) end, { silent = true, desc = "save file" })
util.map({ "n" }, "H", function() vim.cmd([[bn]]) end, { silent = true, desc = "prev buf" })
util.map({ "n" }, "L", function() vim.cmd([[bp]]) end, { silent = true, desc = "next buf" })

util.map({ "i" }, "<C-n>", "<Down>")
util.map({ "i" }, "<C-p>", "<Up>")
util.map({ "i", "c" }, "<C-b>", "<Left>")
util.map({ "i", "c" }, "<C-f>", "<Right>")
