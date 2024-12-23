return {
  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        icons_enabled = false,
        component_separators = {
          left = "|",
          right = "|",
        },
        section_separators = {
          left = "",
          right = "",
        },
      },
    },
  },

  -- Scrollbar
  {
    "dstein64/nvim-scrollview",
    lazy = false,
  },

  -- Indent guides
  {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    main = "ibl",
    opts = {
      scope = {
        show_start = false,
        show_end = false,
        highlight = { "Function" },
      },
      indent = {
        char = "┊",
      },
      whitespace = {
        remove_blankline_trail = false,
      },
    },
  },

  -- Distraction free mode
  {
    "folke/zen-mode.nvim",
    lazy = false,
    opts = {
      window = {
        options = {
          signcolumn = "no",
          number = false,
          relativenumber = false,
          cursorline = false,
          cursorcolumn = false,
          foldcolumn = "0",
          list = false,
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false,
          showcmd = false,
          laststatus = 0,
        },
        twilight = { enabled = true },
        gitsigns = { enabled = false },
        tmux = { enabled = false },
        todo = { enabled = false },
      },
    },
  },

  -- Limited view
  {
    "junegunn/limelight.vim",
    lazy = false,
  },

  -- Highlight word under cursor
  {
    "itchyny/vim-cursorword",
    lazy = false,
  },

  -- Buffers bar
  {
    "akinsho/bufferline.nvim",
    lazy = false,
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      local bl = require("bufferline")

      bl.setup({
        options = {
          mode = "tabs",
          numbers = "none",
          indicator = {
            style = "icon",
          },
          show_buffer_icons = true,
          show_buffer_close_icons = true,
          show__close_icons = true,
          show_tab_indicators = true,
          style_preset = bl.style_preset.no_italic,
        },
      })
    end,
  },

  -- Close buffers
  {
    "kazhala/close-buffers.nvim",
    lazy = false,
  },

  -- Navigate through buffers
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
}
