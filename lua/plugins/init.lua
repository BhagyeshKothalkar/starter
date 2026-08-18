return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  -- LSP setup
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "nvchad.configs.lspconfig"
      require "configs.lspconfig"
    end,
  },

  -- Mason: Auto-install C++ tools
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd", -- C/C++ LSP
        "clang-format", -- Formatter
        "codelldb", -- Debugger
        "rust-analyzer", -- rust LSP
      },
    },
  },

  -- treesitter

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "cmake",
        "markdown",
        "markdown_inline",
        "latex",
        "rust",
        "toml",
      },
    },
  },

  -- DAP: Debug Adapter Protocol
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "configs.dap"
    end,
  },

  -- Markview for live Markdown and Unicode LaTeX math rendering
  {
    "OXY2DEV/markview.nvim",
    lazy = false, -- Recommended for seamless startup loading
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      -- Enables rendering in normal and command mode
      modes = { "n", "no", "c" },
      hybrid_modes = { "n" },
    },
  },

{
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "|",
    },
    scope = {
      enabled = true,
      char = "|",
    },
  },
},
}
