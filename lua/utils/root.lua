local M = {}

M.get_lsp_client = function(buf)
  local client = vim.lsp.get_clients({ bufnr = buf })[1]
  return client
end

M.get_root_by_lsp = function(buf)
  local client = M.get_lsp_client(buf)

  return client and client.root_dir or nil
end

M.get_root_by_find = function ()
  local cwd = vim.uv.cwd()
  local git_root = vim.fs.find(".git", { path = cwd, upward = true})[1]

  return git_root and vim.fn.fnamemodify(git_root, ":h") or nil
end

M.find_root = function(buf)
  local root_dir = M.get_root_by_lsp(buf)

  if root_dir == nil then
    root_dir = M.get_root_by_find()
  end

  return root_dir
end

M.get = function()
  local buf = vim.api.nvim_get_current_buf()
  local ret = M.find_root(buf) or vim.uv.cwd()

  return ret
end

return M
