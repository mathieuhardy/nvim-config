return {
  {
    "saghen/blink.cmp",
    lazy = false,
    version = "0.8.2",
    dependencies = { "rafamadriz/friendly-snippets" },
    opts = {
      enabled = function()
        return vim.bo.buftype ~= "nofile"
      end,
      keymap = {
        preset = "none",
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<ESC>"] = {
          function(cmp)
            require("blink.cmp")["hide"]()
            vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<ESC>", true, false, true), "x", true)
          end,
          "fallback",
        },
        ["<Tab>"] = { "accept", "fallback" },
      },
      appearance = {
        use_nvim_cmp_as_default = false,
        nerd_font_variant = "mono",
      },
      sources = {
        -- "lsp"
        default = { "path", "snippets", "buffer" },
      },
      completion = {
        list = {
          selection = "manual",
        },
      },
    },
    opts_extend = { "sources.default" },
  },
}
