return {
  -- Auto-complete
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
    dependencies = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "ray-x/cmp-sql",
      "SergioRibera/cmp-dotenv",
    },
    config = function()
      -- Enable friendly-snippets in luansnip
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Setup nvim-cmp
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<ESC>"] = cmp.mapping.abort(),
          ["<TAB>"] = cmp.mapping.confirm(),
          ["<Up>"] = cmp.mapping.select_prev_item(),
          ["<Down>"] = cmp.mapping.select_next_item(),
          ["<C-Space>"] = cmp.mapping.complete(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" }, -- LSP
          { name = "luasnip" }, -- snippets
          { name = "buffer" }, -- text within the current buffer
          { name = "path" }, -- file system paths
          { name = "sql" }, -- sql files
          { name = "dotenv" }, -- dotenv
          { name = "crates" }, -- Rust crates
        }),
      })

      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })

      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
          { name = "cmdline" },
        }),
        matching = { disallow_symbol_nonprefix_matching = false },
      })
    end,
  },

  -- nvim-cmp source used to fetch Rust crates
  {
    "saecki/crates.nvim",
    tag = "stable",
    config = function()
      require("crates").setup({
        completion = {
          cmp = {
            enabled = true,
          },
        },
      })
    end,
  },
}
