return {
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      defaults = {
        layout_strategy = "vertical",
        layout_config = {
          vertical = {
            width = 0.9,
          },
        },
        mappings = {
          i = {
            ["<F3>"] = "select_horizontal",
            ["<F4>"] = "select_vertical",
          },
        },
      },
    },
  },
}
