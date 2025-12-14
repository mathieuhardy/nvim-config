return {
  -- Copilot
  {
    "github/copilot.vim",
    enabled = false,
    lazy = false,
  },

  -- Codeium
  {
    "Exafunction/windsurf.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_chat = true,
        enable_cmp_source = true,
        virtual_text = {
          enabled = true,
          filetypes = {
            dockerfile = true,
            javascript = true,
            json = true,
            markdown = true,
            python = true,
            rust = true,
            sql = true,
            toml = true,
            typescript = true,
            yaml = true,
          },
          default_filetype_enabled = true,
          idle_delay = 75,
          map_keys = true,
          key_bindings = {
            -- Accept the current completion.
            accept = "<C-y>",
            -- Accept the next word.
            accept_word = false,
            -- Accept the next line.
            accept_line = false,
            -- Clear the virtual text.
            clear = false,
            -- Cycle to the next completion.
            next = false,
            -- Cycle to the previous completion.
            prev = false,
          },
        },
      })
    end,
  },

  -- Codecompanion (for chatting with mistral)
  {
    "olimorris/codecompanion.nvim",
    enabled = true,
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      interactions = {
        chat = {
          adapter = "mistral",
        },
        inline = {
          adapter = "mistral",
        },
        cmd = {
          adapter = "mistral",
        },
        background = {
          adapter = "mistral",
        },
      },
    },
  },
}
