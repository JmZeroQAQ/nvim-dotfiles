return {
  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cmd = { 'FzfLua' },
    opts = {
      keymap = {
        builtin = {
          true,
          ['<c-f>'] = 'preview-page-down',
          ['<c-b>'] = 'preview-page-up',
        },
      },
    },
  },
  {
    'glepnir/dbsession.nvim',
    cmd = { 'SessionSave', 'SessionDelete', 'SessionLoad' },
    opts = {},
  },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
  },
}
