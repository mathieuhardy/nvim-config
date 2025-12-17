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
    "williamboman/mason.nvim",
    enabled = true,
    lazy = false,
    dependencies = {
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      -- Base
      require("mason").setup()

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
