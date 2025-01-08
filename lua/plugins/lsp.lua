local servers = {
  lua_ls = {
    settings = {
      Lua = {
        diagnostics = {
          unusedLocalExclude = { '_*' },
          globals = { 'vim' },
          disable = {
            'luadoc-miss-see-name',
            'undefined-field',
          },
        },
        runtime = { version = 'LuaJIT' },
        workspace = {
          library = {
            vim.env.VIMRUNTIME .. '/lua',
            '${3rd}/busted/library',
            '${3rd}/luv/library',
          },
          checkThirdParty = false,
        },
        completion = { callSnippet = 'Replace' },
      },
    },
  },
}

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    event = { "BufRead", "BufNewFile" },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_keys(servers),
      })

      local on_attach = function(client, _)
        vim.opt.omnifunc = 'v:lua.vim.lsp.omnifunc'
        client.server_capabilities.semanticTokensProvider = nil
      end

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('blink.cmp').get_lsp_capabilities(capabilities)

      for server, conf in pairs(servers) do
        require('lspconfig')[server].setup(vim.tbl_deep_extend('force', {
        on_attach = on_attach,
        capabilities = capabilities,
        }, conf))
      end

      vim.lsp.handlers['workspace/diagnostic/refresh'] = function(_, _, ctx)
        local ns = vim.lsp.diagnostic.get_namespace(ctx.client_id)
        local bufnr = vim.api.nvim_get_current_buf()
        vim.diagnostic.reset(ns, bufnr)
        return true
      end
      vim.diagnostic.config({
        virtual_text = {
          prefix = '❯',
        },
      })

      vim.diagnostic.config({ signs = { text = { 'E', 'W', 'I', 'H' } } })
    end,
  },
  {
    'nvimdev/lspsaga.nvim',
    event = "LspAttach",
    config = function()
      require('lspsaga').setup({
        ui = {
          devicon = false,
          border = 'single',
        },
      })
    end
  },
}
