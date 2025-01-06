return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufRead", "BufNewFile" },
  build = ":TSUpdate",
  opts = {
    ensure_installed = { "lua", "c", "go", "cpp", "rust", "python", "typescript", "javascript", "css", "scss", "diff", "dockerfile", "gomod", "gosum", "gowork", "html", "markdown", "markdown_inline", "json", "jsonc", "vim", "vimdoc"},
    auto_install = true,
    highlight = {
      enable = true,
      disable = function(_, buf)
        local bufname = vim.api.nvim_buf_get_name(buf)
        local max_filesize = 300 * 1024
        local ok, stats = pcall(vim.uv.fs_stat, bufname)
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
    },
    indent = {
      enable = true,
    },
  }
}
