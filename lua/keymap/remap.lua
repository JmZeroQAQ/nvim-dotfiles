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
util.map({ "n" }, "<leader>qq", function() vim.cmd([[qa!]]) end, { silent = true, desc = "quit all" })

-- Window
util.map({ "n" }, "<C-h>", "<C-w>h", { silent = true, desc = "move to left windows" })
util.map({ "n" }, "<C-l>", "<C-w>l", { silent = true, desc = "move to right windows" })
util.map({ "n" }, "<C-j>", "<C-w>j", { silent = true, desc = "move to below windows" })
util.map({ "n" }, "<C-k>", "<C-w>k", { silent = true, desc = "move to above windows" })
util.map({ "n" }, "<leader>wd", "<C-w>q", { silent = true, desc = "close current window" })
util.map({ "n" }, "<leader>wh", function() vim.cmd([[set nospr | vs]]) end, { silent = true, desc = "create window on left" })
util.map({ "n" }, "<leader>wl", function() vim.cmd([[set spr | vs]]) end, { silent = true, desc = "create window on right" })
util.map({ "n" }, "<leader>wj", function() vim.cmd([[set sb | sp]]) end, { silent = true, desc = "create window on below" })
util.map({ "n" }, "<leader>wk", function() vim.cmd([[set nosb | sp]]) end, { silent = true, desc = "create window on above" })
util.map({ "n" }, "<leader>w[", function() vim.cmd([[vertical resize -5]]) end, { silent = true, desc = "decrease vertical size" })
util.map({ "n" }, "<leader>w]", function() vim.cmd([[vertical resize +5]]) end, { silent = true, desc = "increase vertical size" })

-- Move
util.map({ "i" }, "<C-n>", "<Down>")
util.map({ "i" }, "<C-p>", "<Up>")
util.map({ "i", "c" }, "<C-b>", "<Left>")
util.map({ "i", "c" }, "<C-f>", "<Right>")
