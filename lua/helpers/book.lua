function book_find_files()
  local select_entry = function(prompt_bufnr)
    require("telescope.actions").file_edit(prompt_bufnr)
    require("zen-mode").open()
  end

  require("telescope.builtin").find_files({
    attach_mappings = function(_, map)
      map("n", "<cr>", select_entry)
      map("i", "<cr>", select_entry)
      return true
    end,
  })
end
