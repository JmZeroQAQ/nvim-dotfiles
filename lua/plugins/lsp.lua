local servers = {
  lua_ls = {
    settings = {
      Lua = {
        runtime = { version = 'LuaJIT' },
        workspace = {
          library = {
            vim.env.VIMRUNTIME,
            '${3rd}/luv/library',
          },
          checkThirdParty = false,
        },
        completion = { callSnippet = 'Replace' },
      },
    },
  },
  gopls = {
    settings = {
      gopls = {
        usePlaceholders = true,
        completeUnimported = true,
        analyses = {
          unusedparams = true,
        },
        -- semanticTokens = true,
        staticcheck = true,
        hints = {
          assignVariableTypes = true,
          compositeLiteralFields = true,
          compositeLiteralTypes = true,
          constantValues = true,
          functionTypeParameters = true,
          parameterNames = true,
          rangeVariableTypes = true,
        },
      },
    },
  },
  clangd = {},
}

return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    event = { 'BufRead', 'BufNewFile' },
    config = function()
      require('mason').setup()
      require('mason-lspconfig').setup({
        ensure_installed = { 'lua_ls' },
      })

      local on_attach = function(client, _)
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

      vim.diagnostic.config({
        virtual_text = {
          prefix = '●',
        },
      })

      -- ERROR, WARN, INFO, HINT
      vim.diagnostic.config({ signs = { text = { ' ', ' ', ' ', ' ' } } })
    end,
  },
  {
    'nvimdev/lspsaga.nvim',
    event = 'LspAttach',
    config = function()
      require('lspsaga').setup({
        ui = {
          devicon = false,
          border = 'rounded',
        },
        lightbulb = {
          enable = false,
        },
        outline = {
          layout = 'float',
        },
      })
    end,
  },
}
