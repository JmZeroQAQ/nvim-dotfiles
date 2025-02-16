-- Set leader key
local  util= require("utils.util")

-- Bufferline
util.map({ "n" }, "H", function() vim.cmd([[BufferLineCyclePrev]]) end, { desc = "prev buf" })
util.map({ "n" }, "L", function() vim.cmd([[BufferLineCycleNext]]) end, { desc = "next buf" })
util.map({ "n" }, "<leader>bD", function() vim.cmd([[BufferLineCloseOthers]]) end, { desc = "delete other buffers" })

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
util.map({ "n" }, "gd", function() vim.cmd([[Lspsaga goto_definition]]) end, { desc = "goto definition" })
util.map({ "n" }, "gy", function() vim.cmd([[Lspsaga goto_type_definition]]) end, { desc = "goto type_definition" })

-- Picker
util.map({ "n" }, "gr", function() Snacks.picker.lsp_references() end, { desc = "goto references" })

-- Conform
util.map({ "n" }, "<leader>cf", function() require("conform").format({ async = true }) end, { desc = "code format" })


-- Neotree
util.map({ "n" }, "<leader>e",
  function()
    local root = require("utils.root").get()
     Snacks.explorer({ cwd = root })
  end,
  { desc = "open explorer" })


-- Snacks
util.map({ "n" }, "<leader>bd", function() Snacks.bufdelete() end, { desc = "buffer delete" })
util.map({ "n", "t" }, "<C-/>", function() Snacks.terminal() end, { desc = "toggle terminal" })
util.map({ "n" }, "<leader>n", function() Snacks.notifier.show_history() end, { desc = "notification history" })
util.map({ "n" }, "<leader>.", function() Snacks.scratch() end, { desc = "toggle scratch buffer" })
util.map({ "n" }, "<leader>S", function() Snacks.scratch.select() end, { desc = "select scratch buffer" })

-- Gitsign
util.map({ "n" }, "]g", function() vim.cmd([[Gitsigns next_hunk]]) end, { desc = "goto next git hunk" })
util.map({ "n" }, "[g", function() vim.cmd([[Gitsigns prev_hunk]]) end, { desc = "goto prev git hunk" })

-- Picker
util.map({ "n" },
  "<leader><space>",
  function()
    local root = require("utils.root").get()
    Snacks.picker.files({ cwd = root } )
  end,
  { desc = "fuzzy find files" })
util.map({ "n" },
  "<leader>fc",
  function()
    Snacks.picker.files({ cwd = vim.fn.stdpath("config") })
  end,
  { desc = "fuzzy find config" })
util.map({ "n" }, "<leader>fb", function() Snacks.picker.buffers() end, { desc = "fuzzy find buffers" })
util.map({ "n" }, "<leader>fo", function() Snacks.picker.recent() end, { desc = "fuzzy find oldfiles" })
util.map({ "n" }, "<leader>fh", function() Snacks.picker.help() end, { desc = "fuzzy find helptags" })
util.map({ "n" }, "<leader>fl", function() Snacks.picker.grep() end, { desc = "fuzzy live grep" })
util.map({ "n" }, "<leader>sk", function() Snacks.picker.keymaps() end, { desc = "search keymap" })


-- dbsession
util.map({ "n" }, "<leader>ss", function() vim.cmd([[SessionSave]]) end, { desc = "Session save" })
util.map({ "n" }, "<leader>sl", function() vim.cmd([[SessionLoad]]) end, { desc = "Session load" })


-- flash
util.map({ "n", "x" }, "s", function() require("flash").jump() end, { desc = "flash" })
