return {
  -- Colorshemes
  {
    enabled = true,
    "sainnhe/sonokai",
    lazy = false,
    init = function()
      vim.g.sonokai_style = "default"
      vim.g.sonokai_disable_italic_comment = 1
      vim.cmd.colorscheme("sonokai")
    end,
  },

  -- Highlight CSS colors
  {
    enabled = os.getenv("BOOK") ~= "1",
    "norcalli/nvim-colorizer.lua",
    lazy = false,
    init = function()
      vim.opt.termguicolors = true
    end,
    config = function()
      require("colorizer").setup()
    end,
  },
}
