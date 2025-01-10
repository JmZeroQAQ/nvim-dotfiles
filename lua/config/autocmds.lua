local util = require('utils.util')

local group = util.aug('JmGroup')

util.au('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = group,
  callback = function()
    vim.highlight.on_yank()
  end,
})

util.au('BufEnter', {
  desc = "Lazy load my plugin's keymap",
  group = group,
  once = true,
  callback = function()
    require('keymap.keymaps')
  end,
})

util.au('InsertEnter', {
  group = group,
  callback = function()
    require('utils.pairs').setup({})
  end,
})
