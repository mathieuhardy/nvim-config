return {
  -- Colorshemes
  {
    enabled = true,
    "sainnhe/sonokai",
    lazy = false,
    init = function()
      vim.g.sonokai_style = "default"
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
