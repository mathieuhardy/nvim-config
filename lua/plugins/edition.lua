return {
  -- Commenter
  {
    enabled = os.getenv("BOOK") ~= "1",
    "numToStr/Comment.nvim",
    lazy = false,
  },

  -- Autopair
  {
    enabled = os.getenv("BOOK") ~= "1",
    "windwp/nvim-autopairs",
    lazy = false,
    event = "InsertEnter",
    config = true,
  },

  -- Open file at position
  {
    enabled = os.getenv("BOOK") ~= "1",
    "vim-scripts/file-line",
    lazy = false,
  },

  -- Increment/decrement
  {
    enabled = os.getenv("BOOK") ~= "1",
    "qwertologe/nextval.vim",
    lazy = false,
  },

  -- Remove trailing whitespaces
  {
    enabled = os.getenv("BOOK") ~= "1",
    "ntpeters/vim-better-whitespace",
    lazy = false,
  },

  -- Traduction
  {
    enabled = os.getenv("BOOK") ~= "1",
    "potamides/pantran.nvim",
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
