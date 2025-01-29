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
}
