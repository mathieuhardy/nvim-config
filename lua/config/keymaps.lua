if os.getenv("BOOK") ~= "1" then
  -- Open keymaps popup
  remap("n", "?", "<CMD>lua toggle_keymaps()<CR>")
  remap("v", "?", "<CMD>lua toggle_keymaps()<CR>")

  --------------------------------------------------------------------------------
  -- Navigation
  --------------------------------------------------------------------------------

  -- ctrl-<PageUp/PageDown>: Previous/Next tab
  remap("n", "<C-PageUp>", "gT", "Previous tab")
  remap("i", "<C-PageUp>", "<ESC>gT", "Previous tab")
  remap("v", "<C-PageUp>", "<ESC>gT", "Previous tab")

  remap("n", "<C-PageDown>", "gt", "Next tab")
  remap("i", "<C-PageDown>", "<ESC>gt", "Next tab")
  remap("v", "<C-PageDown>", "<ESC>gt", "Next tab")

  -- Navigate through buffers
  remap("", "<C-Up>", "<CMD>TmuxNavigateUp<CR>", "Go up")
  remap("", "<C-Down>", "<CMD>TmuxNavigateDown<CR>", "Go down")
  remap("", "<C-Left>", "<CMD>TmuxNavigateLeft<CR>", "Go left")
  remap("", "<C-Right>", "<CMD>TmuxNavigateRight<CR>", "Go right")

  -- ,,: open previous file
  remap("n", "<Leader><Leader>", ":e#<CR>", "Previous file")
  remap("i", "<Leader><Leader>", "<ESC>:e#<CR>", "Previous file")
  remap("v", "<Leader><Leader>", "<ESC>:e#<CR>", "Previous file")

  --------------------------------------------------------------------------------
  -- Text control
  --------------------------------------------------------------------------------

  -- shift-v: visual block mode
  remap("", "<S-v>", "<C-v>", "Visual block mode")

  -- ctrl-a: select all
  remap("n", "<C-a>", "gg^^vG$$", "Select all")
  remap("i", "<C-a>", "<ESC>gg^^vG$$", "Select all")
  remap("v", "<C-f>", "<ESC>gg^^vG$$", "Select all")

  -- ctrl-x: cut
  remap("v", "<C-x>", '"+x', "Cut")

  -- ctrl-c: copy
  remap("", "<C-c>", '"+y', "Copy")

  -- ctrl-v: paste
  remap("n", "<C-v>", '"+gp', "Paste")
  remap("i", "<C-v>", '<ESC>"+gpa', "Paste")
  remap("v", "<C-v>", '"+gp', "Paste")

  -- ctrl-k: comment/uncomment
  remap("n", "<C-k>", "gcc", "Comment/uncomment", { noremap = false })
  remap("i", "<C-k>", "<ESC>gcc", "Comment/uncomment", { noremap = false })
  remap("v", "<C-k>", "gc", "Comment/uncomment", { noremap = false })

  -- ctrl-l: Translate
  remap("n", "<C-l>", "<CMD>Pantran<CR>", "Translation")
  remap("i", "<C-l>", "<ESC><CMD>Pantran<CR>", "Translation")
  remap("v", "<C-l>", "<CMD>Pantran<CR>", "Translation")

  -- ctrl-w: wrapping
  remap("n", "<C-w>", "<CMD>set wrap!<CR>", "Toggle wrapping")
  remap("i", "<C-w>", "<ESC><CMD>set wrap!<CR>a", "Toggle wrapping")
  remap("v", "<C-w>", "<CMD>set wrap!<CR>", "Toggle wrapping")

  -- +/-: increment/decrement value under cursor
  remap("n", "<kMinus>", "<Plug>nextvalDec", "Increment/descrement")
  remap("n", "<kPlus>", "<Plug>nextvalInc", "Increment/descrement")

  remap("n", "-", "<Plug>nextvalDec", "Increment/descrement")
  remap("n", "+", "<Plug>nextvalInc", "Increment/descrement")

  --------------------------------------------------------------------------------
  -- Search
  --------------------------------------------------------------------------------

  -- ctrl-f: find files
  remap("n", "<C-f>", "<CMD>lua require('telescope.builtin').find_files()<CR>", "Find files")
  remap("i", "<C-f>", "<ESC><CMD>lua require('telescope.builtin').find_files()<CR>", "Find files")
  remap("v", "<C-f>", "<ESC><CMD>lua require('telescope.builtin').find_files()<CR>", "Find files")

  -- ctrl-g: grep pattern
  remap("n", "<C-g>", "<CMD>lua require('telescope.builtin').live_grep()<CR>", "Grep pattern")
  remap("i", "<C-g>", "<ESC><CMD>lua require('telescope.builtin').live_grep()<CR>", "Grep pattern")
  remap("v", "<C-g>", "<ESC><CMD>lua require('telescope.builtin').live_grep()<CR>", "Grep pattern")

  -- ctrl-shift-m: man pages
  remap("n", "<C-S-m>", "<CMD>lua require('telescope.builtin').man_pages()<CR>", "Grep pattern")
  remap("i", "<C-S-m>", "<ESC><CMD>lua require('telescope.builtin').man_pages()<CR>", "Grep pattern")
  remap("v", "<C-S-m>", "<ESC><CMD>lua require('telescope.builtin').man_pages()<CR>", "Grep pattern")

  -- ctrl-s: search symbol under cursor
  remap("n", "<C-s>", "<CMD>AnyJump<CR>", "Jump to definition")
  remap("i", "<C-s>", "<ESC><CMD>AnyJump<CR>", "Jump to definition")
  remap("v", "<C-s>", "<ESC><CMD>AnyJumpVisual<CR>", "Jump to definition")

  --------------------------------------------------------------------------------
  -- Advanced
  --------------------------------------------------------------------------------

  -- ctrl-space: autocomplemetion
  remap("n", "<C-Space>", "<CMD>lua require('blink.cmp').show()<CR>a", "Show completion menu")
  remap("i", "<C-Space>", "<ESC><CMD>lua require('blink.cmp').show()<CR>a", "Show completion menu")
  remap("v", "<C-Space>", "<ESC><CMD>lua require('blink.cmp').show()<CR>", "Show completion menu")

  -- ctrl-b: git blame
  remap("", "<C-b>", "<CMD>lua toggle_git_blame()<CR>", "Git blame")

  -- ctrl-d: delete buffers
  remap("", "<C-d>", "<CMD>lua require('close_buffers').delete({type = 'hidden'})<CR>", "Grep pattern")

  -- ctrl-o: Sort
  remap("v", "<C-o>", ":'<,'> sort<CR>", "Sort")

  -- ctrl-n: Open notes
  remap("n", "<C-n>", "<CMD>VimwikiIndex<CR>", "Open notes")
  remap("i", "<C-n>", "<ESC><CMD>VimwikiIndex<CR>", "Open notes")
  remap("v", "<C-n>", "<ESC><CMD>VimwikiIndex<CR>", "Open notes")

  -- ctrl-t: terminal
  remap("n", "<C-t>", '<CMD>lua require("FTerm").toggle()<CR>', "Open terminal")
  remap("t", "<C-t>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', "Open terminal")
  remap("t", "<ESC>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', "Open terminal")

  -- alt-k: kubernetes
  remap("n", "<A-k>", "<CMD>lua require('kubectl').toggle()<CR>", "kubernetes")
  remap("i", "<A-k>", "<ESC><CMD>lua require('kubectl').toggle()<CR>", "kubernetes")
  remap("v", "<A-k>", "<CMD>lua require('kubectl').toggle()<CR>", "kubernetes")

  --------------------------------------------------------------------------------
  -- F-keys
  --------------------------------------------------------------------------------

  -- F1: save
  remap("n", "<F1>", ":w<CR>", "Save")
  remap("i", "<F1>", "<ESC>:w<CR>a", "Save")
  remap("v", "<F1>", "<ESC>:w<CR>", "Save")

  -- F2: close
  remap("n", "<F2>", ":q<CR>", "Close")
  remap("i", "<F2>", "<ESC>:q<CR>", "Close")
  remap("v", "<F2>", "<ESC>:q<CR>", "Close")

  -- F3: horizontal split
  remap("n", "<F3>", ":split<CR>", "Horizontal split")
  remap("i", "<F3>", "<ESC>:split<CR>a", "Horizontal split")
  remap("v", "<F3>", "<ESC>:split<CR>", "Horizontal split")

  -- F4: vertical split
  remap("n", "<F4>", ":vsplit<CR>", "Vertical split")
  remap("i", "<F4>", "<ESC>:vsplit<CR>a", "Vertical split")
  remap("v", "<F4>", "<ESC>:vsplit<CR>", "Vertical split")

  -- F7: no highlight
  remap("n", "<F7>", ":nohlsearch<CR>", "No highlight")
  remap("i", "<F7>", "<ESC>:nohlsearch<CR>a", "No highlight")
  remap("v", "<F7>", "<ESC>:nohlsearch<CR>", "No highlight")

  -- F9: toggle invisible chars
  remap("n", "<F9>", "<CMD>lua toggle_invisible_chars()<CR>", "Show invisible characters")
  remap("i", "<F9>", "<ESC><CMD>lua toggle_invisible_chars()<CR>a", "Show invisible characters")
  remap("v", "<F9>", "<ESC><CMD>lua toggle_invisible_chars()<CR>", "Show invisible characters")

  -- F10: filesystem explorer
  remap("n", "<F10>", ":Neotree toggle filesystem<CR>", "Filesystem explorer")
  remap("i", "<F10>", "<ESC>:Neotree toggle filesystem<CR>a", "Filesystem explorer")
  remap("v", "<F10>", "<ESC>:Neotree toggle filesystem<CR>", "Filesystem explorer")

  -- F11: limited view mode
  remap("n", "<F11>", ":Limelight!!<CR>", "Limited view mode")
  remap("i", "<F11>", "<ESC>:Limelight!!<CR>a", "Limited view mode")
  remap("v", "<F11>", "<ESC>:Limelight!!<CR>", "Limited view mode")

  -- F12: distraction free mode
  remap("n", "<F12>", ":ZenMode<CR>", "Distraction free mode")
  remap("i", "<F12>", "<ESC>:ZenMode<CR>a", "Distraction free mode")
  remap("v", "<F12>", "<ESC>:ZenMode<CR>", "Distraction free mode")
else
  --------------------------------------------------------------------------------
  -- Spelling
  --------------------------------------------------------------------------------

  -- ctrl-a: add to dictionary
  remap("n", "<C-a>", "zg", "Add to dictionary")
  remap("i", "<C-a>", "<ESC>zg", "Add to dictionary")
  remap("v", "<C-f>", "<ESC>zg", "Add to dictionary")

  -- ctrl-r: remove from dictionary
  remap("n", "<C-r>", "zw", "Remove from dictionary")
  remap("i", "<C-r>", "<ESC>zw", "Remove from dictionary")
  remap("v", "<C-r>", "<ESC>zw", "Remove from dictionary")

  -- ctrl-s: open spell suggestions
  remap("n", "<C-s>", "<CMD>lua require('telescope.builtin').spell_suggest()<CR>", "Jump to definition")
  remap("i", "<C-s>", "<ESC><CMD>lua require('telescope.builtin').spell_suggest()<CR>", "Jump to definition")
  remap("v", "<C-s>", "<ESC><CMD>lua require('telescope.builtin').spell_suggest()<CR>", "Jump to definition")

  --------------------------------------------------------------------------------
  -- Searching
  --------------------------------------------------------------------------------

  -- ctrl-f: find files
  remap("n", "<C-f>", "<CMD>lua book_find_files()<CR>", "Find files")
  remap("i", "<C-f>", "<ESC><CMD>lua book_find_files<CR>", "Find files")
  remap("v", "<C-f>", "<ESC><CMD>lua book_find_files<CR>", "Find files")

  --------------------------------------------------------------------------------
  -- F-keys
  --------------------------------------------------------------------------------

  -- F1: save
  remap("n", "<F1>", ":w<CR>", "Save")
  remap("i", "<F1>", "<ESC>:w<CR>a", "Save")
  remap("v", "<F1>", "<ESC>:w<CR>", "Save")

  -- F2: close
  remap("n", "<F2>", ":q<CR>", "Close")
  remap("i", "<F2>", "<ESC>:q<CR>", "Close")
  remap("v", "<F2>", "<ESC>:q<CR>", "Close")

  -- F7: no highlight
  remap("n", "<F7>", ":nohlsearch<CR>", "No highlight")
  remap("i", "<F7>", "<ESC>:nohlsearch<CR>a", "No highlight")
  remap("v", "<F7>", "<ESC>:nohlsearch<CR>", "No highlight")

  -- F9: toggle invisible chars
  remap("n", "<F9>", "<CMD>lua toggle_invisible_chars()<CR>", "Show invisible characters")
  remap("i", "<F9>", "<ESC><CMD>lua toggle_invisible_chars()<CR>a", "Show invisible characters")
  remap("v", "<F9>", "<ESC><CMD>lua toggle_invisible_chars()<CR>", "Show invisible characters")

  -- F11: limited view mode
  remap("n", "<F11>", ":Limelight!!<CR>", "Limited view mode")
  remap("i", "<F11>", "<ESC>:Limelight!!<CR>a", "Limited view mode")
  remap("v", "<F11>", "<ESC>:Limelight!!<CR>", "Limited view mode")
end
