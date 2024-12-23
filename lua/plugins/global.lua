return {
  -- Tree parser
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "bash",
          "c",
          "cmake",
          "cpp",
          "css",
          "csv",
          "dockerfile",
          "helm",
          "html",
          "javascript",
          "json",
          "lua",
          "python",
          "rust",
          "sql",
          "terraform",
          "toml",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
        },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  -- External tool installer
  {
    "williamboman/mason.nvim",
    lazy = false,
    dependencies = {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
      -- "williamboman/mason-lspconfig.nvim",
      -- "neovim/nvim-lspconfig",
      -- "simrat39/rust-tools.nvim",
    },
    config = function()
      -- Base
      require("mason").setup()

      -- LSP servers
      -- require("mason-lspconfig").setup({
      --   ensure_installed = { "rust_analyzer" },
      -- })

      -- require("lspconfig").rust_analyzer.setup({})

      -- Formatters
      require("mason-tool-installer").setup({
        ensure_installed = {
          "black",
          "isort",
          "rustfmt",
          "stylua",
        },
      })
    end,
  },
}
