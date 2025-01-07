default_opts = {
  auto_format = { "*.c", "*.cpp", "*.h", "*.hpp", "*.lua", "*.py", "*.rs", "*.toml" },
  history = 1000,
  default_max_length = 80,
  leader = ",",
  max_lengths = {
    { length = 100, filetypes = { "rust" } },
  },
  strip_whitespaces = { "*.c", "*.cpp", "*.h", "*.hpp", "*.lua", "*.py", "*.rs", "*.toml" },
  tab_sizes = {
    c = 4,
    cpp = 4,
    h = 4,
    hpp = 4,
    lua = 2,
    python = 4,
    rust = 4,
    toml = 4,
  },
}
