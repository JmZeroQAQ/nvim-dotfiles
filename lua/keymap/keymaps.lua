-- Set leader key
local  util= require("utils.util")

-- Lspsaga
util.map({ "n" }, "K", function() vim.cmd([[Lspsaga hover_doc]]) end, { silent = true, desc = "hover doc" })
util.map({ "n" }, "<leader>cp", function() vim.cmd([[Lspsaga peek_definition]]) end, { silent = true, desc = "peek definition" })
util.map({ "n" }, "<leader>ca", function() vim.cmd([[Lspsaga code_action]]) end, { silent = true, desc = "code action" })
util.map({ "n" }, "<leader>cr", function() vim.cmd([[Lspsaga rename]]) end, { silent = true, desc = "code rename" })
util.map({ "n" }, "<leader>co", function() vim.cmd([[Lspsaga outline]]) end, { silent = true, desc = "code outline" })
util.map({ "n" }, "]d", function() vim.cmd([[Lspsaga diagnostic_jump_next]]) end, { silent = true, desc = "jump next diagnostic" })
util.map({ "n" }, "[d", function() vim.cmd([[Lspsaga diagnostic_jump_prev]]) end, { silent = true, desc = "jump prev diagnostic" })
