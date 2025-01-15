-- Set leader key
local  util= require("utils.util")

-- Lspconfig
util.map({ "n" }, "<leader>cl", function() vim.cmd([[LspInfo]]) end, { desc = "LSP Information" })

-- Lspsaga
util.map({ "n" }, "K", function() vim.cmd([[Lspsaga hover_doc]]) end, { desc = "hover doc" })
util.map({ "n" }, "<leader>cp", function() vim.cmd([[Lspsaga peek_definition]]) end, { desc = "peek definition" })
util.map({ "n" }, "<leader>ca", function() vim.cmd([[Lspsaga code_action]]) end, { desc = "code action" })
util.map({ "n" }, "<leader>cr", function() vim.cmd([[Lspsaga rename]]) end, { desc = "code rename" })
util.map({ "n" }, "<leader>co", function() vim.cmd([[Lspsaga outline]]) end, { desc = "code outline" })
util.map({ "n" }, "]d", function() vim.cmd([[Lspsaga diagnostic_jump_next]]) end, { desc = "jump next diagnostic" })
util.map({ "n" }, "[d", function() vim.cmd([[Lspsaga diagnostic_jump_prev]]) end, { desc = "jump prev diagnostic" })

-- Conform
util.map({ "n" }, "<leader>cf", function() require("conform").format({ async = true }) end, { desc = "code format" })


-- Neotree
util.map({ "n" }, "<leader>e", function() vim.cmd([[Neotree toggle]]) end, { desc = "open explorer" })


-- Snacks
util.map({ "n" }, "<leader>bd", function() Snacks.bufdelete() end, { desc = "buffer delete" })
util.map({ "n", "t" }, "<C-/>", function() Snacks.terminal() end, { desc = "toggle terminal" })

-- Gitsign
util.map({ "n" }, "]g", function() vim.cmd([[Gitsigns next_hunk]]) end, { desc = "goto next git hunk" })
util.map({ "n" }, "[g", function() vim.cmd([[Gitsigns prev_hunk]]) end, { desc = "goto prev git hunk" })
