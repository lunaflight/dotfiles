require("mason").setup()
require("mason-lspconfig").setup({
  -- https://github.com/williamboman/mason-lspconfig.nvim
  ensure_installed = {
    "bashls",
    "clangd",
    "cssls",
    "gradle_ls",
    "html",
    "jdtls",
    "lua_ls",
    "ocamllsp",
    "omnisharp",
    "pylsp",
    "sqlls",
    "texlab"
  }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").bashls.setup { on_attach = on_attach, capabilities = capabilities }
require("lspconfig").clangd.setup { on_attach = on_attach, capabilities = capabilities, cmd = { "clangd", "--offset-encoding=utf-16", }, }
require("lspconfig").cssls.setup { on_attach = on_attach, capabilities = capabilities }
require("lspconfig").lua_ls.setup { on_attach = on_attach, capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using
                -- (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {
                    'vim',
                    'require'
                },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}
require("lspconfig").gradle_ls.setup { on_attach = on_attach, capabilities = capabilities }
require("lspconfig").html.setup { on_attach = on_attach, capabilities = capabilities }
require("lspconfig").jdtls.setup { on_attach = on_attach, capabilities = capabilities }
require("lspconfig").ocamllsp.setup { on_attach = on_attach, capabilities = capabilities }
require("lspconfig").omnisharp.setup { on_attach = on_attach, capabilities = capabilities }
require("lspconfig").pylsp.setup {
  pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        }
      }
    },
  on_attach = on_attach, capabilities = capabilities
}
require("lspconfig").sqlls.setup { on_attach = on_attach, capabilities = capabilities }
require("lspconfig").texlab.setup { on_attach = on_attach, capabilities = capabilities }
