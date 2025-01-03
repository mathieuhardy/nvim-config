return {
  -- Self-hosted AI server
  {
    "TabbyML/vim-tabby",
    lazy = false,
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    init = function()
      vim.g.tabby_agent_start_command = { "npx", "tabby-agent", "--stdio" }
      vim.g.tabby_inline_completion_trigger = "manual"
      vim.g.tabby_inline_completion_keybinding_trigger_or_dismiss = "<C-h>"
      vim.g.tabby_inline_completion_keybinding_accept = "<C-j>"
    end,
  },
}
