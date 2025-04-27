return {
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = { 'BufRead', 'BufNewFile' },
    opts = {},
  },
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    event = { 'BufRead', 'BufNewFile' },
    opts = {
      options = {
        mode = "tabs",
        always_show_bufferline = false,
      },
    },
  },
  {
    'lewis6991/gitsigns.nvim',
    event = 'BufRead',
    opts = {},
  },
}
