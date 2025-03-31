return {
  -- Copilot
  {
    enabled = os.getenv("BOOK") ~= "1",
    "github/copilot.vim",
    lazy = false,
  },
}
