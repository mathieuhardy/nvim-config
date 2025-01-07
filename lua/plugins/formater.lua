return {
  {
    enabled = os.getenv("BOOK") ~= "1",
    "stevearc/conform.nvim",
    lazy = false,
    config = function()
      -- Stylua options
      stylua_opts = {}

      array_append(stylua_opts, "--indent-type")
      array_append(stylua_opts, "Spaces")

      if global_opts.tab_sizes["lua"] ~= nil then
        array_append(stylua_opts, "--indent-width")
        array_append(stylua_opts, global_opts.tab_sizes["lua"])
      end

      -- Setup
      require("conform").setup({
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "isort", "black" },
          rust = { "rustfmt" },
        },
        formatters = {
          stylua = {
            prepend_args = stylua_opts,
          },
        },
        format_on_save = true,
        lsp_format = "never",
        quiet = false,
        stop_after_first = false,
        notify_on_error = true,
        notify_no_formatters = true,
      })
    end,
  },
}
