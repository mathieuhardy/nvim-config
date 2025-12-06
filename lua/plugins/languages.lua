return {
  -- Rust
  {
    enabled = true,
    dependencies = {
      "neovim/nvim-lspconfig",
      -- "mfussenegger/nvim-dap",
      -- "nvim-lua/plenary.nvim",
    },
    "simrat39/rust-tools.nvim",
    lazy = false,
    config = function()
      local rt = require("rust-tools")

      rt.setup({
        tools = {
          inlay_hints = {
            auto = true,
            only_current_line = false,
          },
        },
        server = {
          on_attach = function(_, bufnr)
            -- raccourcis utiles
            local function map(mode, lhs, rhs)
              vim.keymap.set(mode, lhs, rhs, { buffer = bufnr })
            end

            vim.keymap.set("n", "<C-LeftMouse>", vim.lsp.buf.definition, { buffer = bufnr })
            -- vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr })
            -- vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr })
            -- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = bufnr })

            map("n", "<C-P>", rt.hover_actions.hover_actions)
          end,
        },
      })
    end,
  },
}
