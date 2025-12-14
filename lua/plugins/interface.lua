return {
  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    enabled = true,
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
      sections = {
        lualine_a = { "mode" },
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = {},
        lualine_z = { "location" },
      },
    },
  },

  -- Scrollbar
  {
    enabled = true,
    "dstein64/nvim-scrollview",
    lazy = false,
    config = function()
      vim.g.scrollview_signs_on_startup = {}
    end,
  },

  -- Indent guides
  {
    enabled = true,
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
    "mathieuhardy/zen-mode.nvim",
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
    enabled = true,
    "itchyny/vim-cursorword",
    lazy = false,
  },

  -- Buffers bar
  {
    "crispgm/nvim-tabline",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      show_index = false,
      show_modify = true,
      show_icon = true,
      modify_indicator = "~",
      brackets = { "", "" },
      inactive_tab_max_length = 0,
    },
  },

  -- Close buffers
  {
    enabled = true,
    "kazhala/close-buffers.nvim",
    lazy = false,
  },

  -- Navigate through buffers and resize buffers
  {
    enabled = true,
    "mrjones2014/smart-splits.nvim",
    lazy = false,
  },

  -- Highlight CSS colors
  {
    enabled = true,
    "norcalli/nvim-colorizer.lua",
    lazy = false,
    init = function()
      vim.opt.termguicolors = true
    end,
    config = function()
      require("colorizer").setup()
    end,
  },

  -- Markdown highlighting
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    opts = {
      experimental = {
        check_rtp = false,
      },
    },
  },

  -- Colors in help documentations
  {
    "OXY2DEV/helpview.nvim",
    lazy = false,
  },
}
