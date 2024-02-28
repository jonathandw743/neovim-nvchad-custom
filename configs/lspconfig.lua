local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "svelte", "gdscript", "jdtls", "taplo" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {"python"},
})


local configs = require "lspconfig.configs"

if not configs.wgsl_analyzer then
  configs.wgsl_analyzer = {
    default_config = {
      cmd = { vim.fn.expand "$HOME" .. "/.cargo/bin/wgsl_analyzer" },
      filetypes = { "wgsl" },
      root_dir = lspconfig.util.root_pattern(".git", "wgsl"),
      settings = {},
    },
  }
end

lspconfig.wgsl_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}


lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
