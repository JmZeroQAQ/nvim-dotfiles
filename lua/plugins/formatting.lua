return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      go = { 'goimports', 'gofmt' },
      c = { lsp_format = 'fallback' },
      cpp = { lsp_format = 'fallback' },
    },
  },
}
