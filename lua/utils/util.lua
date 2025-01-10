local M = {}

function M.map(mode, lhs, rhs, opts)
  if not opts then
    opts = {}
  end

  vim.keymap.set(mode, lhs, rhs, opts)
end

function M.au(event, opts)
  if not opts then
    opts = {}
  end

  vim.api.nvim_create_autocmd(event, opts)
end

function M.aug(name, opts)
  if not opts then
    opts = {}
  end

  vim.api.nvim_create_augroup(name, opts)
end

return M
