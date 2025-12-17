return {
  -- Highlight CSS colors
  {
    "norcalli/nvim-colorizer.lua",
    enabled = true,
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
    enabled = true,
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
    enabled = true,
    lazy = false,
  },
}
