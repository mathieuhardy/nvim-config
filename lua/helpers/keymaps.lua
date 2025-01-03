function remap(mode, lhs, rhs, desc, opts)
  local options = {
    noremap = true,
    silent = true,
    desc = desc,
  }

  if opts then
    options = vim.tbl_extend("force", options, opts)
  end

  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function toggle_keymaps()
  if vim.g.keymap_popup_id then
    vim.cmd("q")
    vim.g.keymap_popup_id = nil
  else
    local opts = {
      width = 80,
      height = 50,
      border = require("popcorn.borders").rounded_corners_border,
      title = { "Keymaps", "Type" },
      content = vim.fn.stdpath("config") .. "/data/keymaps.txt",
    }

    vim.g.keymap_popup_id = require("popcorn"):new(opts):pop()
  end
end
