return {
  -- Commenter
  {
    "numToStr/Comment.nvim",
    enabled = true,
    lazy = false,
    config = function()
      require("Comment").setup()

      require("Comment.ft").set("sql", "--%s")
    end,
  },

  -- Autopair
  {
    "windwp/nvim-autopairs",
    enabled = true,
    lazy = false,
    event = "InsertEnter",
    config = true,
  },

  -- Open file at position
  {
    "vim-scripts/file-line",
    enabled = true,
    lazy = false,
  },

  -- Increment/decrement
  {
    "qwertologe/nextval.vim",
    enabled = true,
    lazy = false,
  },

  -- Remove trailing whitespaces
  {
    "ntpeters/vim-better-whitespace",
    enabled = true,
    lazy = false,
  },

  -- Traduction
  {
    "potamides/pantran.nvim",
    enabled = true,
    lazy = false,
    config = function()
      local actions = require("pantran.ui.actions")

      require("pantran").setup({
        default_engine = "google",
        engines = {
          google = {
            default_source = "en",
            default_target = "fr",
            fallback = {
              default_source = "en",
              default_target = "fr",
            },
          },
        },
        controls = {
          mappings = {
            edit = {
              n = {
                ["q"] = actions.close,
                ["<Esc>"] = actions.close,
                ["?"] = actions.help,
                ["y"] = actions.yank_close_translation,
                ["r"] = actions.replace_close_translation,
                ["a"] = actions.append_close_translation,
                ["e"] = actions.select_engine,
                ["<Left>"] = actions.select_source,
                ["<Right>"] = actions.select_target,
                ["s"] = actions.switch_languages,
                ["t"] = actions.translate,
              },
              i = {},
            },
            select = {
              n = {
                ["<Down>"] = actions.select_next,
                ["<Up>"] = actions.select_prev,
                ["<CR>"] = actions.select_choose,
                ["<ESC>"] = actions.select_abort,
                ["q"] = actions.select_abort,
              },
              i = {
                ["<Down>"] = actions.select_next,
                ["<Up>"] = actions.select_prev,
                ["<CR>"] = actions.select_choose,
                ["<ESC>"] = actions.select_abort,
              },
            },
          },
        },
      })
    end,
  },
}
