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

-- util.au('InsertEnter', {
--   group = group,
--   callback = function()
--     require('utils.pairs').setup({})
--   end,
-- })

util.au('FileType', {
  desc = 'close some filetypes with <q>',
  group = group,
  pattern = {
    'PlenaryTestPopup',
    'checkhealth',
    'dbout',
    'gitsigns-blame',
    'grug-far',
    'help',
    'lspinfo',
    'neotest-output',
    'neotest-output-panel',
    'neotest-summary',
    'notify',
    'qf',
    'spectre_panel',
    'startuptime',
    'tsplayground',
  },
  callback = function(event)
    vim.bo[event.buf].buflisted = false
    vim.schedule(function()
      util.map('n', 'q', function()
        vim.cmd('close')
        pcall(vim.api.nvim_buf_delete, event.buf, { force = true })
      end, {
        buffer = event.buf,
        silent = true,
        desc = 'quit buffer',
      })
    end)
  end,
})

util.au('BufReadPost', {
  desc = 'go to last location when opening a buffer',
  group = group,
  callback = function(event)
    local exclude = { 'gitcommit' }
    local buf = event.buf
    if vim.tbl_contains(exclude, vim.bo[buf].filetype) then
      return
    end
    local mark = vim.api.nvim_buf_get_mark(buf, '"')
    local lcount = vim.api.nvim_buf_line_count(buf)
    if mark[1] > 0 and mark[1] <= lcount then
      pcall(vim.api.nvim_win_set_cursor, 0, mark)
    end
  end,
})
