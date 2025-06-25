function enable_book_view()
  require("zen-mode").open({
    window = {
      width = 100,
      options = {
        signcolumn = "no",
        number = false,
        relativenumber = false,
        cursorline = false,
        cursorcolumn = false,
        foldcolumn = "0",
        list = true,
      },
    },
    plugins = {
      options = {
        enabled = true,
        ruler = false,
        showcmd = false,
        laststatus = 3,
      },
      twilight = { enabled = true },
      gitsigns = { enabled = false },
      tmux = { enabled = false },
      todo = { enabled = false },
    },
  })

  vim.cmd("Limelight!")
  vim.cmd("Limelight!! 0.85")
end

Statusline = {}

function Statusline.show()
  return table.concat({
    "%=%#StatusLineExtra#",
    get_words(),
  })
end
