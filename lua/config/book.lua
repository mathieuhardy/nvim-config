-- To generate the spell file:
--   git clone https://github.com/thjbdvlt/spell-fr.vim.git
--   make fr.utf-8.spl
--   mv fr.utf-8.spl ~/.config/nvim/spell/

if os.getenv("BOOK") == "1" then
  -- Wrapping
  vim.o.wrap = true
  vim.o.linebreak = true
  vim.o.wrapmargin = 1

  -- Spelling
  vim.o.spelllang = "fr"
  vim.opt.spellfile = vim.fn.getcwd() .. "/spell/fr.utf-8.add"
  vim.o.spell = true

  -- Symbols
  vim.o.list = true

  vim.api.nvim_set_hl(0, "NonText", {
    fg = "#999999",
    bg = "NONE",
    bold = false,
    italic = false,
    underline = false,
  })

  -- Abbreviations
  vim.cmd("iabbrev -- —")
  vim.cmd("iabbrev oe œ")
  vim.cmd("iabbrev << «")
  vim.cmd("iabbrev >> »")
end
