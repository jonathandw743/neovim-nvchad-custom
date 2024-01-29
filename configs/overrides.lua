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

    "gdscript",
    -- "gdresource",
    
    "java",
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

    "rust-analyzer",
    "codelldb",

    "black",
    "mypy",
    "ruff",
    "pyright",
    "debugpy",

    "gdtoolkit",
    -- just call it java ffs
    "jdtls",
    "checkstyle",
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

return M
