local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",

    "wgsl",
    "rust",
    "python",
    "typescript",
    "javascript",
    "svelte",
    "toml",

    "gdscript",
    -- "gdresource",

    "java",

    "go",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "svelte-language-server",

    -- c/cpp stuff
    "clangd",
    "clang-format",
    "codelldb",

    "rust-analyzer",
    "codelldb",
    "taplo",

    "black",
    "mypy",
    "ruff",
    "pyright",
    "debugpy",

    "gdtoolkit",
    -- just call it java ffs
    "jdtls",
    -- "java-language-server",
    "checkstyle",

    "gopls",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- M.mason_lspconfig = {
--   ensure_installed = {
--     "lua_ls",
--     "rust_analyzer",
--     "html",
--     "cssls",
--     "tsserver",
--     "clangd",
--     "svelte",
--     "jdtls",
--   },
-- }

return M
