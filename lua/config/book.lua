if os.getenv("BOOK") == "1" then
  -- Wrapping
  vim.o.textwidth = 80
  vim.o.wrap = true
  vim.o.linebreak = true
  vim.o.list = false
  vim.o.wrapmargin = 1

  -- Spelling
  vim.o.spell = true
  vim.o.spelllang = "fr"

  -- Abbreviations
  vim.cmd("iabbrev -- —")
  vim.cmd("iabbrev oe œ")
  vim.cmd("iabbrev << «")
  vim.cmd("iabbrev >> »")
end
