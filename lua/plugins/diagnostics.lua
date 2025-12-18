return {
  {
    "sontungexpt/better-diagnostic-virtual-text",
    enabled = true,
    lazy = false,
    event = "LspAttach",
    config = function()
      require("better-diagnostic-virtual-text").setup(opts)
    end,
  },
}
