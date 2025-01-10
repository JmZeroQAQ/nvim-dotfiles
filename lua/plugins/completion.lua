return {
  'saghen/blink.cmp',
  dependencies = {
    'rafamadriz/friendly-snippets',
  },
  event = 'LspAttach',
  version = '*',
  opts = {
    keymap = {
      preset = 'default',
      ['<CR>'] = { 'accept', 'fallback' },
    },
    completion = {
      menu = {
        border = 'rounded',
        draw = {
          columns = { { 'kind_icon' }, { 'label', 'label_description', gap = 1 }, { 'kind' } },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 300,
        treesitter_highlighting = true,
        window = {
          border = 'rounded',
          winhighlight = 'Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,CursorLine:CursorLine,Search:None',
        },
      },
      accept = { auto_brackets = { enabled = true } },
      ghost_text = { enabled = true },
    },
    sources = {
      default = { 'snippets', 'lsp', 'path', 'buffer' },
      cmdline = {},
    },
    signature = { enabled = true },
  },
}
