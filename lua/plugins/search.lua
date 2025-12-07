return {
  {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "LinArcX/telescope-command-palette.nvim",
    },
    config = function()
      require("telescope").setup({
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
        extensions = {
          command_palette = {
            -- {
            --   "File",
            --   { "quit (C-q)", ":qa" },
            --   { "files (C-f)", ":lua require('telescope.builtin').find_files()", 1 },
            -- },
            -- {
            --   "Help",
            --   { "tips", ":help tips" },
            --   { "search help(F1)", ":lua require('telescope.builtin').help_tags()", 1 },
            -- },
          },
        },
      })

      require("telescope").load_extension("command_palette")
    end,
  },
}
