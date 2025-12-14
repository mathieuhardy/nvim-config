return {
  -- Tree parser
  {
    "nvim-treesitter/nvim-treesitter",
    enabled = true,
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
          "markdown",
          "markdown_inline",
          "python",
          "rust",
          "sql",
          "svelte",
          "terraform",
          "toml",
          "typescript",
          "vim",
          "vimdoc",
          "vue",
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
    enabled = true,
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

      -- Tools
      require("mason-tool-installer").setup({
        ensure_installed = {
          -- Formaters
          "black",
          "isort",
          "rustfmt",
          "stylua",
          -- Debugger
          "codelldb",
        },
      })
    end,
  },
}
